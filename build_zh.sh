#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/zh"
mkdir -p ../build/zh
export BIBINPUTS="$(pwd):$(pwd)/../shared:${BIBINPUTS:-}"
export BSTINPUTS="$(pwd)/../shared/acmart-primary:${BSTINPUTS:-}"
export TEXINPUTS="$(pwd):$(pwd)/../shared/acmart-primary:${TEXINPUTS:-}"
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=../build/zh main_zh.tex
