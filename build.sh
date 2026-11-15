#!/usr/bin/env bash
# Wraps dashboard.html (the editable source) into index.html (a standalone page any static host can serve).
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  sed -n '1,/^<\/style>$/p' dashboard.html
  printf '</head>\n<body>\n'
  sed '1,/^<\/style>$/d' dashboard.html
  printf '</body>\n</html>\n'
} > index.html
echo "Built index.html ($(wc -c < index.html) bytes)"
