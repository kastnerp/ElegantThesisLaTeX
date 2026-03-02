#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if ! command -v latexmk >/dev/null 2>&1; then
  echo "latexmk not found. Install latexmk or use compile.bat." >&2
  exit 1
fi

ROOT_FILE="${1:-thesis.tex}"
latexmk -lualatex -interaction=nonstopmode -synctex=1 -file-line-error -halt-on-error -use-makeindex "$ROOT_FILE"