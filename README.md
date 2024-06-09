# markdown.css

To render a markdown file as a PDF using a custom style sheet:

```shell
pandoc --pdf-engine weasyprint --css ./markdown.css -s -o output.pdf input.md
```
