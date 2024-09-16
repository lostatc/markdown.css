# markdown.css

This repository contains a collection of CSS stylesheets for rendering markdown
files as pretty PDFs via Pandoc/Weasyprint.

To render a markdown file with the `beryl` theme using Pandoc:

```shell
pandoc --pdf-engine weasyprint --css ./themes/beryl.css -o output.pdf input.md
```

## Themes

Below are examples of each theme provided in this repository.

### Beryl

- [Headings, inline markup, blockquotes, lists](./examples/beryl-typography.pdf)
- [Code blocks, tables](./examples/beryl-data.pdf)
- [Callouts](./examples/beryl-callouts.pdf)

### Stain

- [Headings, inline markup, blockquotes, lists](./examples/stain-typography.pdf)
- [Code blocks, tables](./examples/stain-data.pdf)

## Callouts

The Beryl theme supports callouts, implemented entirely in CSS.

- [Markdown syntax example](./examples/callouts.md)
- [Generated PDF example](./examples/beryl-callouts.png)
