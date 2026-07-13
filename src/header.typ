#let accent = rgb("#243d60")

#let icons = (
  mail: "<path d=\"M4 6h16v12H4z\"/><path d=\"m4 7 8 6 8-6\"/>",
  phone: "<path d=\"M7 3H4a1 1 0 0 0-1 1c0 9.4 7.6 17 17 17a1 1 0 0 0 1-1v-3l-4-1-1.4 3a16 16 0 0 1-10.6-10.6L8 7z\"/>",
  location: "<path d=\"M20 10c0 5-8 11-8 11S4 15 4 10a8 8 0 1 1 16 0Z\"/><circle cx=\"12\" cy=\"10\" r=\"2.5\"/>",
  globe: "<circle cx=\"12\" cy=\"12\" r=\"9\"/><path d=\"M3 12h18M12 3c3 3 3 15 0 18M12 3c-3 3-3 15 0 18\"/>",
  calendar: "<rect x=\"3\" y=\"5\" width=\"18\" height=\"16\" rx=\"2\"/><path d=\"M7 3v4M17 3v4M3 10h18M7 14h2M11 14h2M15 14h2M7 18h2M11 18h2\"/>",
)

#let icon(name) = {
  if name == "linkedin" {
    box(
      width: 10pt,
      height: 10pt,
      radius: 1pt,
      fill: accent,
      inset: (left: 1.1pt, top: -0.2pt),
      text(fill: white, size: 7pt, weight: 700)[in],
    )
  } else {
    let body = icons.at(name, default: icons.globe)
    let svg = "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#243d60\" stroke-width=\"1.8\" stroke-linecap=\"round\" stroke-linejoin=\"round\">" + body + "</svg>"
    image(bytes(svg), width: 10pt, height: 10pt)
  }
}

// A contact is deliberately just an icon name and caller-controlled content.
#let contact(icon, value) = (icon: icon, value: value)

#let resume-header(name, title: "", contacts: (), photo: none) = {
  let contact-cell(item) = grid(
    columns: (4.8mm, 1fr),
    align: (center + horizon, left + horizon),
    icon(item.icon),
    text(size: 8.2pt, item.value),
  )

  grid(
    columns: if photo == none { (1fr,) } else { (1fr, 37mm) },
    column-gutter: 10mm,
    align: top,
    block(height: 43.3mm)[
      #pad(top: 3.9mm)[
        #stack(
          dir: ttb,
          spacing: 0mm,
          text(size: 25pt, weight: 700, tracking: 0.25pt, name),
          box(height: 4mm),
          text(size: 11pt, weight: 700, fill: accent, title),
          box(height: 6mm),
          grid(
            columns: (1.08fr, 0.92fr),
            column-gutter: 10mm,
            row-gutter: 3.3mm,
            ..contacts.map(contact-cell),
          ),
        )
      ]
    ],
    if photo != none {
      box(width: 37mm, height: 43.3mm, clip: true, photo)
    },
  )
}
