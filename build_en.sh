#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/en"
mkdir -p ../build/en
export BIBINPUTS="$(pwd):$(pwd)/../shared:${BIBINPUTS:-}"
latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -outdir=../build/en main_en.tex
