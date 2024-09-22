#!/usr/bin/env nu

let image_density = 300

def render [md: path, img: path, css: path] {
    pandoc --pdf-engine weasyprint --css $css --to pdf --output - $md | magick -density $image_density - $img
}

let theme_paths = ls ./themes/ | get name

for $theme_path in $theme_paths {
    let theme_name = $theme_path | path parse | get stem

    render ./examples/typography.md $"./examples/($theme_name)-typography.png" $theme_path
    render ./examples/data.md $"./examples/($theme_name)-data.png" $theme_path
}

render ./examples/callouts.md ./examples/beryl-callouts.png ./themes/beryl.css
