#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: ./pdf2txt_th.sh <pdf file>"
    exit 1
fi

pdftotext $1 - | ruby adjust_text_from_pdf.rb
