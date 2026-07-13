#import "./header.typ": resume-header

#let accent = rgb("#243d60")

#let resume(
  body,
  name: "",
  title: "",
  contacts: (),
  photo: none,
) = {
  set document(author: name, title: name)
  set page(
    paper: "a4",
    margin: (x: 13.5mm, top: 8mm, bottom: 7mm),
    footer: context align(right)[
      #text(size: 7.5pt, fill: luma(45%), counter(page).display())
    ],
  )
  set text(font: "Liberation Sans", size: 8.7pt, lang: "de", ligatures: false)
  set par(leading: 0.58em)
  set list(indent: 2.8mm, body-indent: 1.3mm, spacing: 0.65em)

  show link: set text(fill: black)
  show heading.where(level: 2): it => block(
    width: 100%,
    above: 4mm,
    below: 2mm,
    breakable: false,
  )[
    #line(length: 100%, stroke: 0.45pt + luma(55%))
    #v(2mm)
    #text(size: 10.2pt, weight: 700, fill: accent, it.body)
  ]

  resume-header(name, title: title, contacts: contacts, photo: photo)
  body
}
