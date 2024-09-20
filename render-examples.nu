#!/usr/bin/env nu

let image_density = 200

let theme_paths = ls ./themes/ | get name

for $theme_path in $theme_paths {
    let theme_name = $theme_path | path parse | get stem

    pandoc --pdf-engine weasyprint --css $theme_path --to pdf --output - ./examples/typography.md | magick -density $image_density - $"./examples/($theme_name)-typography.png"

    pandoc --pdf-engine weasyprint --css $theme_path --to pdf --output - ./examples/data.md | magick -density $image_density - $"./examples/($theme_name)-data.png"
}
