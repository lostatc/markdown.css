# markdown.css

This repository contains a collection of CSS stylesheets for rendering markdown
files as pretty PDFs via Pandoc/Weasyprint.

To render a markdown file with the `beryl` theme using Pandoc:

```shell
pandoc --pdf-engine weasyprint --css ./themes/beryl.css -o output.pdf input.md
```

## Callouts

The `beryl` theme supports callouts, implemented entirely in CSS.

![Screenshot of different callouts in a PDF document](./examples/callouts.png)

````
```callout:info
This is something you should take note of.
```

```callout:tip
Here's a tip to get you started.
```

```callout:warning
Be cautious when you do this.
```

```callout:danger
This is a dangerous operation; you should never do this.
```
````
