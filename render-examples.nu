#!/usr/bin/env nu

const image_density = 300

def render [md: path, img: path, css: path] {
    # This makes the generated PDFs reproducible, meaning that regenerating
    # them won't result in a new file needing to be committed to the repo.
    $env.SOURCE_DATE_EPOCH = 0

    let pdf = pandoc --pdf-engine weasyprint --css $css --to pdf --output - $md | complete

    $pdf.stdout | magick -density $image_density - $img

    $pdf.stderr
}

let theme_paths = ls ./themes/ | get name
mut examples = []

for $theme_path in $theme_paths {
    let theme_name = $theme_path | path parse | get stem

    $examples ++= {
        md: ./examples/typography.md,
        img: $"./examples/($theme_name)-typography.png",
        css: $theme_path,
    }

    $examples ++= {
        md: ./examples/data.md,
        img: $"./examples/($theme_name)-data.png",
        css: $theme_path,
    }
}

$examples ++= {
    md: ./examples/callouts.md,
    img: ./examples/beryl-callouts.png,
    css: ./themes/beryl.css,
}

let images = $examples | par-each { |example|
    let stderr = render $example.md $example.img $example.css

    {
        path: $example.css
        logs: $stderr
    }
}

for $img in $images {
    print $"(ansi white_bold)Generated (ansi cyan_bold)($img.path)(ansi reset)\n"
    print $img.logs
}
