#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
FIG_DIR="${SCRIPT_DIR}/shared/figures"
SRC_DIR="${FIG_DIR}/diagram_src"
BUILD_DIR="${FIG_DIR}/.build"

mkdir -p "${FIG_DIR}" "${BUILD_DIR}"

render_one() {
  local stem="$1"
  local src_file="${SRC_DIR}/${stem}.tex"
  local pdf_out="${FIG_DIR}/${stem}.pdf"
  local svg_out="${FIG_DIR}/${stem}.svg"
  local png_prefix="${FIG_DIR}/${stem}"

  if [[ ! -f "${src_file}" ]]; then
    echo "[ERROR] Missing source file: ${src_file}" >&2
    exit 1
  fi

  echo "[FIG] Rendering ${stem}.tex"
  (
    cd "${SRC_DIR}"
    xelatex \
      -interaction=nonstopmode \
      -halt-on-error \
      -output-directory "${BUILD_DIR}" \
      "${stem}.tex" >/dev/null
  )

  cp "${BUILD_DIR}/${stem}.pdf" "${pdf_out}"
  pdftocairo -svg "${pdf_out}" "${svg_out}"
  pdftocairo -png -singlefile -r 300 "${pdf_out}" "${png_prefix}"
}

render_one "task1_system_pipeline_en"
render_one "task1_system_pipeline_zh"

echo
echo "[DONE] Figure assets written to ${FIG_DIR}"
