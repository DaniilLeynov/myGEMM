#!/bin/bash

# Имя Python-файла
PYTHON_SCRIPT="pull_data.py"

# Имя файла для вывода
OUTPUT_FILE="nvidia2.csv"

# Запуск скрипта 9 раз
for i in {1..20}; do
    echo "Запуск #$i" >> "$OUTPUT_FILE"
    python3 "$PYTHON_SCRIPT" >> "$OUTPUT_FILE" 2>&1
    echo "" >> "$OUTPUT_FILE"
done

echo "Готово! Результаты добавлены в $OUTPUT_FILE"
