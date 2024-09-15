#!/usr/bin/env bash

declare -r test_dir="$(dirname "${BASH_SOURCE}")"

pandoc --pdf-engine weasyprint --css "${test_dir}/../themes/${1}.css" --standalone --output "${test_dir}/output.pdf"
