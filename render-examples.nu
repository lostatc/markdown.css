#!/usr/bin/env nu

let image_density = 300

def render [md: path, img: path, css: path] {
    # This makes the generated PDFs reproducible, meaning that regenerating
    # them won't result in a new file needing to be committed to the repo.
    $env.SOURCE_DATE_EPOCH = 0

    pandoc --pdf-engine weasyprint --css $css --to pdf --output - $md | magick -density $image_density - $img
}

let theme_paths = ls ./themes/ | get name

for $theme_path in $theme_paths {
    let theme_name = $theme_path | path parse | get stem

    render ./examples/typography.md $"./examples/($theme_name)-typography.png" $theme_path
    render ./examples/data.md $"./examples/($theme_name)-data.png" $theme_path
}

render ./examples/callouts.md ./examples/beryl-callouts.png ./themes/beryl.css
