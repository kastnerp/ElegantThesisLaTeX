[![Build LaTeX document](https://github.com/kastnerp/ElegantThesisLaTeX/actions/workflows/main.yml/badge.svg)](https://github.com/kastnerp/ElegantThesisLaTeX/actions/workflows/main.yml)

# ElegantThesisLaTeX

A thesis template based on KOMA-Script (`scrbook`).
Includes ideas and snippets inspired by Konrad Muehler (kfiles.de/latex.php).

## Quickstart

1. Install a TeX distribution with LuaLaTeX, BibTeX, MakeIndex, MakeGlossaries, and `latexmk`.
2. Build the PDF.
3. Clean build artifacts when needed.

Build commands:

- Windows full build (includes equation export):

```bat
compile.bat
```

- Cross-platform (fast, deterministic build via `latexmk`):

```powershell
./compile.ps1
```

```bash
./compile.sh
```

On macOS/Linux, run `chmod +x compile.sh clean.sh` once.

Clean commands:

```bat
clean.bat
```

```bash
./clean.sh
```

## Customize In 5 Files

1. `config.tex` - project metadata and font toggle.
2. `title.tex` - title page layout.
3. `abstract.tex` - abstract content.
4. `thesis.tex` - document structure, chapter order, lists, bibliography.
5. `1_chapter.tex` - start your content here and follow the pattern for other chapters.

Related files:

- `header.tex` controls style and layout.
- `glossaries.tex` contains glossary and acronym definitions.

## Fonts

Default fonts are free and included with common TeX distributions.

- Serif: `XCharter-Roman`
- Sans: `TeX Gyre Heros`

Fallback option:

- Set `\UseFallbackFontstrue` in `config.tex` to switch to Latin Modern.

## Build Tools

- `latexmkrc` configures a deterministic multi-pass build.
- `equations.bat` exports equations and requires `pdfcrop`, Ghostscript, and `pdf2svg`.

## Citation Style

Switch citation style in `header.tex`.

- For a numbered bibliography, use the "Numbered Bibliography" block.
- For APA style, use the "APA Style" block and replace `\citep{}` with `\cite{}`.

## Maintainer Notes

Template repository:

- In GitHub, open repository settings and enable "Template repository".

Release tags:

- `git tag -a vX.Y.Z -m "Release vX.Y.Z"`
- `git push --tags`
- Create the release in GitHub for the tag.

## Features

![Alt text](/screenshots/index.png)
![Alt text](/screenshots/selected_bibliography_export.png)
![Alt text](/screenshots/symbols.png)
![Alt text](/screenshots/TOC.png)
![Alt text](/screenshots/acronyms.png)
![Alt text](/screenshots/automatic_equation_export.png)
![Alt text](/screenshots/backref.png)
![Alt text](/screenshots/clickable_pdf_bookmarks.png)
![Alt text](/screenshots/equations.png)
![Alt text](/screenshots/fonts_header.png)
![Alt text](/screenshots/fullpage_appendix.png)
