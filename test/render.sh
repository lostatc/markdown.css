#!/usr/bin/env bash

declare -r test_dir="$(dirname "${BASH_SOURCE}")"

pandoc --pdf-engine weasyprint --css "${1}" --standalone --output "${test_dir}/output.pdf"
