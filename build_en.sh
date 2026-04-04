#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/en"
mkdir -p ../build/en
ln -sfn ../shared ../build/shared
export BIBINPUTS="$(pwd):$(pwd)/../shared:${BIBINPUTS:-}"
export BSTINPUTS="$(pwd)/../shared/acmart-primary:${BSTINPUTS:-}"
export TEXINPUTS="$(pwd):$(pwd)/../shared/acmart-primary:${TEXINPUTS:-}"
latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -outdir=../build/en main_en.tex
