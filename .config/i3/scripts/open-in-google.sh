#!/bin/bash

# Получаем путь к файлу, переданный через %f
FILE="$1"

# Проверяем, существует ли файл
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

# Получаем MIME-тип файла
MIME_TYPE=$(file --mime-type -b "$FILE")

# В зависимости от MIME-типов создаем ссылку для Google Docs/Sheets/Slides
case "$MIME_TYPE" in
    application/vnd.openxmlformats-officedocument.wordprocessingml.document)
        # Открытие в Google Docs
        URL="https://docs.google.com/document/u/0/?tab=ww#${FILE}"
        ;;
    application/vnd.openxmlformats-officedocument.presentationml.presentation)
        # Открытие в Google Slides
        URL="https://docs.google.com/presentation/u/0/?tab=ww#${FILE}"
        ;;
    application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
        # Открытие в Google Sheets
        URL="https://docs.google.com/spreadsheets/u/0/?tab=ww#${FILE}"
        ;;
    *)
        echo "Unsupported file type: $MIME_TYPE"
        exit 1
        ;;
esac

# Открытие URL в браузере
xdg-open "$URL"

