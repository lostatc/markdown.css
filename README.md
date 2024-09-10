# markdown.css

This repository contains a collection of CSS stylesheets for rendering markdown
files as PDFs via Pandoc/Weasyprint.

To render a markdown file using Pandoc:

```shell
pandoc --pdf-engine weasyprint --css ./css/style.css -s -o output.pdf input.md
```
