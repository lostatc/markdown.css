# markdown.css

This repository contains a collection of CSS stylesheets for rendering markdown
files as pretty PDFs via Pandoc/Weasyprint.

To render a markdown file with the Beryl theme using Pandoc:

```shell
pandoc --pdf-engine weasyprint --css ./themes/beryl.css -o output.pdf input.md
```

## Themes

Below are examples of each theme provided in this repository.

### Beryl

- [Headings, inline markup, blockquotes, lists](./examples/beryl-typography.png)
- [Code blocks, tables](./examples/beryl-data.png)
- [Callouts](./examples/beryl-callouts.png)

### Stain

- [Headings, inline markup, blockquotes, lists](./examples/stain-typography.png)
- [Code blocks, tables](./examples/stain-data.png)

### Mark

- [Headings, inline markup, blockquotes, lists](./examples/mark-typography.png)
- [Code blocks, tables](./examples/mark-data.png)

### Lotus

- [Headings, inline markup, blockquotes, lists](./examples/lotus-typography.png)
- [Code blocks, tables](./examples/lotus-data.png)

## Callouts

The Beryl theme supports callouts, implemented entirely in CSS.

- [Markdown syntax example](./examples/callouts.md)
- [Generated PDF example](./examples/beryl-callouts.png)
