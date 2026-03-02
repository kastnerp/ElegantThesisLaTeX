#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

patterns=(
  "*.aux"
  "*.bbl"
  "*.bcf"
  "*.blg"
  "*.brf"
  "*.idx"
  "*.ilg"
  "*.ind"
  "*.lof"
  "*.log"
  "*.lol"
  "*.lot"
  "*.lpr"
  "*.nlo"
  "*.nls"
  "*.out"
  "*.pyg"
  "*.run.xml"
  "*.synctex"
  "*.synctex.gz"
  "*.synctex(busy)"
  "*.tdo"
  "*.toc"
  "*.fdb_latexmk"
  "*.fls"
  "*.glo"
  "*.glg"
  "*.gls"
  "*.acn"
  "*.acr"
  "*.alg"
  "*.slg"
  "*.syg"
  "*.syi"
  "*.mw"
  "*.bak"
  "*.sav"
  "*.tmp"
)

for pat in "${patterns[@]}"; do
  find . -maxdepth 1 -type f -name "$pat" -delete
done

rm -f thesis.pdf export_equations*.pdf
rm -rf output-equations
