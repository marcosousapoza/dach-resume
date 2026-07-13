#let accent = rgb("#243d60")

#let entry-heading(primary, secondary: none) = {
  strong(primary)
  if secondary != none and secondary != "" {
    h(2.2mm)
    text(fill: luma(42%))[|]
    h(2.2mm)
    secondary
  }
}

#let dated-entry(dates, body) = block(above: 0.8mm, below: 4.8mm)[
  #grid(
    columns: (36mm, 1fr),
    column-gutter: 5mm,
    align: top,
    text(size: 8.7pt, weight: 700, fill: accent, dates),
    body,
  )
]

#let work(title, company, dates, body) = dated-entry(dates)[
  #entry-heading(title, secondary: company)
  #linebreak()
  #body
]

#let edu(degree, institution, dates, body) = dated-entry(dates)[
  #entry-heading(degree, secondary: institution)
  #linebreak()
  #body
]

#let project(name, kind: none, body) = block(above: 0.6mm, below: 2.3mm)[
  #text(fill: accent, weight: 700, name)
  #if kind != none [#h(2.2mm)#text(fill: luma(42%))[|]#h(2.2mm)#kind]
  #linebreak()
  #body
]

// Compact label/value rows are useful for skills, certificates, and languages.
#let details(..rows) = {
  let cells = rows.pos().map(row => (
    strong(row.first() + ":"),
    row.last(),
  )).flatten()

  grid(
    columns: (45mm, 1fr),
    row-gutter: 1.5mm,
    ..cells,
  )
}

#let languages(..items) = {
  let cells = items.pos().map(item => grid(
    columns: (25mm, 1fr),
    column-gutter: 2mm,
    strong(item.first() + ":"),
    item.last(),
  ))

  grid(
    columns: (1fr, 1fr),
    column-gutter: 10mm,
    row-gutter: 1.5mm,
    ..cells,
  )
}
