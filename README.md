# DACH Resume

A clean A4 resume template for [Typst](https://typst.app), designed for German-language CVs in the DACH region.

## Features

- Header with a portrait, title, and contact details
- Sections for work experience, education, projects, skills, certificates, and languages
- Reusable helpers for consistently formatted entries
- Compact A4 layout with page numbers

## Requirements

- Typst
- [Typst Forge](https://github.com/marcosousapoza/typst-forge) for local installation

## Quick start

Clone and install the template:

```sh
git clone git@github.com:marcosousapoza/dach-resume.git
cd dach-resume
typst-forge install .
```

Create a resume from the template and compile it:

```sh
typst init @local/dach-resume:0.1.0 my-resume
typst compile my-resume/main.typ
```

## Customization

Edit `my-resume/main.typ` to replace the example content. Replace `image.png` with your portrait, or remove the `photo` argument if you do not want to include one.

The template exports helpers for work experience, education, projects, detail lists, languages, and contact information. See [`template/main.typ`](template/main.typ) for a complete example.
