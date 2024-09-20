#!/usr/bin/env nu

let theme_paths = ls ./themes/ | get name

for $theme_path in $theme_paths {
    let theme_name = $theme_path | path parse | get stem

    pandoc --pdf-engine weasyprint --css $theme_path --to pdf --output - ./examples/typography.md | magick -density 300 - $"./examples/($theme_name)-typography.png"

    pandoc --pdf-engine weasyprint --css $theme_path --to pdf --output - ./examples/data.md | magick -density 300 - $"./examples/($theme_name)-data.png"
}
