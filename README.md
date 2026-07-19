# DACH Resume

A clean A4 [Typst](https://typst.app) resume template for German-language CVs in the DACH region.

## Usage

Install the template directly from GitHub with [Typst Forge](https://github.com/marcosousapoza/typst-forge), create a project, and compile it:

```sh
typst-forge install github:marcosousapoza/dach-resume
typst init @local/dach-resume:0.1.0 my-resume
typst compile my-resume/main.typ
```

Edit `my-resume/main.typ` to replace the example content. Replace `image.png` with your portrait, or remove the `photo` argument if you do not want to include one.
