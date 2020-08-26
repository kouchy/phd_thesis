# Adrien CASSAGNE's Ph.D. Thesis

## Prerequisites

The document compilation has only been tested on `Linux Ubuntu 16.04 LTS`, there
is no guarantee it will compile without issues on other systems.

The document has been written using `LaTeX` and `Biber` as the bibliography
information processing program (`Biber` replaces the traditionnal `BibTeX`
program):

```bash
sudo apt install texlive-full biber
```

The source code samples use the `minted` package which is based on the `Python`
`pygments` package:

```bash
sudo apt install python-pygments python3-pygments
```

<!-- Some of the figures are generated with `Gnuplot`, `XFig` and `Inkscape`:

```bash
sudo apt install gnuplot xfig inkscape
``` -->

`rubber` is used as the building system for the `LaTeX` documents:

```bash
sudo apt install rubber
```

## How to Compile

There is a `Makefile` to help you to compile the document. Here is a description
of the available targets:

- `all`: compiles the entire document.
- `figs`: compiles only the figures, can be useful when working with
  `Sublime Text` for instance.
- `clean`: removes all generated intermediate files but keeps the PDFs.
- `mrproper`: removes all generated intermediate files including the PDFs.
- `open`: shows the thesis with the appropriate PDF reader.

## Known Issues

- There is a bug with the `LaTeX` `titlesec` package on
`Linux Ubuntu 16.04 LTS`, the numbering of the sections and subsections is
broken. Installing the latest version from [https://www.ctan.org/pkg/titlesec](https://www.ctan.org/pkg/titlesec)
solves the problem.

<!-- ## Plan of the Thesis

[Follow this link.](plan.md) -> outdated now :-( -->