#!/bin/bash

# Cek apakah file input disediakan
if [ -z "$1" ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

# Memfilter hanya domain utama, menghapus subdomain, teks lain, dan duplikat
cat "$input_file" \
  | grep -Eo '([a-zA-Z0-9-]+\.){1,}[a-zA-Z]{2,}' \
  | awk -F. '{
      if (NF>=2) {
          print $(NF-1)"."$NF
      }
  }' \
  | sort -u > result.txt

echo "Hasil telah disimpan di result.txt"
