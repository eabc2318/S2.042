import re
import csv
import os
import sys
from pathlib import Path


def parse_create_tables(sql: str) -> dict[str, list[str]]:
    tables: dict[str, list[str]] = {}

    create_blocks = re.finditer(
        r'CREATE\s+TABLE\s+(\w+)\s*\((.*?)\)\s*;',
        sql,
        re.IGNORECASE | re.DOTALL
    )

    for match in create_blocks:
        table_name = match.group(1)
        body = match.group(2)

        columns: list[str] = []
        for line in body.split('\n'):
            line = line.strip().rstrip(',')
            if not line:
                continue
            if re.match(r'CONSTRAINT\b', line, re.IGNORECASE):
                continue
            if re.match(r'(PRIMARY|FOREIGN|UNIQUE|CHECK)\s+KEY', line, re.IGNORECASE):
                continue
            col_match = re.match(r'^(\w+)\s+\S+', line)
            if col_match:
                columns.append(col_match.group(1))

        if columns:
            tables[table_name] = columns

    return tables


def tokenize_values(values_str: str) -> list[str]:
    rows: list[list[str]] = []
    i = 0
    n = len(values_str)

    while i < n:
        while i < n and values_str[i] != '(':
            i += 1
        if i >= n:
            break
        i += 1

        fields: list[str] = []
        current = ''
        in_str = False

        while i < n:
            c = values_str[i]

            if in_str:
                if c == "'" and i + 1 < n and values_str[i + 1] == "'":
                    current += "'"
                    i += 2
                    continue
                elif c == "'":
                    in_str = False
                else:
                    current += c
            else:
                if c == "'":
                    in_str = True
                elif c == ',':
                    fields.append(current.strip())
                    current = ''
                elif c == ')':
                    fields.append(current.strip())
                    rows.append(fields)
                    i += 1
                    break
                else:
                    current += c
            i += 1

    return rows


def parse_inserts(sql: str, tables: dict[str, list[str]]) -> dict[str, list[list[str]]]:
    data: dict[str, list[list[str]]] = {t: [] for t in tables}

    insert_pattern = re.compile(
        r'INSERT\s+INTO\s+(\w+)\s*(?:\([^)]*\))?\s*VALUES\s*((?:\(.*?\)\s*,?\s*)+)\s*;',
        re.IGNORECASE | re.DOTALL
    )

    for match in insert_pattern.finditer(sql):
        table_name_raw = match.group(1)
        values_block = match.group(2)

        table_name = next(
            (t for t in tables if t.lower() == table_name_raw.lower()),
            None
        )
        if table_name is None:
            continue

        rows = tokenize_values(values_block)
        data[table_name].extend(rows)

    return data


def write_csv_files(
    tables: dict[str, list[str]],
    data: dict[str, list[list[str]]],
    output_dir: Path
) -> list[str]:
    output_dir.mkdir(parents=True, exist_ok=True)
    created: list[str] = []

    for table_name, columns in tables.items():
        rows = data.get(table_name, [])
        filepath = output_dir / f"{table_name}.csv"

        with open(filepath, 'w', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow(columns)
            for row in rows:
                if len(row) < len(columns):
                    row = row + [''] * (len(columns) - len(row))
                elif len(row) > len(columns):
                    row = row[:len(columns)]
                writer.writerow(row)

        created.append(str(filepath))

    return created


def main():
    sql_path = Path('extension.sql')
    output_dir = Path('./csv_output')

    if not sql_path.exists():
        print(f"Erreur : fichier introuvable → {sql_path}", file=sys.stderr)
        sys.exit(1)

    sql_content = sql_path.read_text(encoding='utf-8', errors='replace')
    tables = parse_create_tables(sql_content)
    data = parse_inserts(sql_content, tables)
    write_csv_files(tables, data, output_dir)


if __name__ == '__main__':
    main()
    
