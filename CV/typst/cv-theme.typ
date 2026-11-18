#let name-font-size = 22pt
#let margin-size = 42pt
#let muted = rgb("424242")

#let heading-font = "Libertinus Sans"
#let heading-font-size = 11.5pt
#let heading-letter-distance = 0.7pt
#let accent-color = rgb("#1b365d") //rgb("#0f2d59")

#let body-font = "Libertinus Serif" // Or "Inter", "Google Sans", "New Computer Modern", etc.
#let body-font-size = 11pt
#let body-font-color = rgb("#000000")

#let subtitle-font-size = 10.25pt
#let date-font-size = 9pt

// #let section-spacing = 5pt
#let footer-font-size = 8pt
#let footer-font-color = rgb("777777")
#let line-spacing = body-font-size * 0.6
#let paragraph-spacing = line-spacing * 1.3
#let list-indent = line-spacing
#let list-spacing = paragraph-spacing
#let is-justified = false

#let apply-theme(body, text-size: body-font-size, text-color: body-font-color) = {
  set document(title: "Mahdi Moghaddami | Curriculum Vitae", author: "Mahdi Moghaddami")
  set text(
    font: body-font,
    size: body-font-size,
    fill: body-font-color,
  )
  set page(
    paper: "us-letter",
    margin: 42pt,
    footer: context {
      set text(font: heading-font, size: footer-font-size, fill: footer-font-color)
      grid(
        columns: (1fr, auto),
        [Mahdi Moghaddami | Curriculum Vitae], counter(page).display("1 / 1", both: true),
      )
    },
    footer-descent: 16pt,
  )
  set par(leading: line-spacing, spacing: paragraph-spacing, justify: is-justified)

  // bullet point list
  set list(indent: list-indent, body-indent: list-indent, spacing: list-spacing, marker: (
    text(fill: accent-color, sym.bullet),
    text(fill: accent-color, sym.dash),
  ))

  // numbered list, spacing: The spacing between the items of the enumeration.
  set enum(indent: list-indent, body-indent: list-indent, spacing: list-spacing)

  show heading.where(level: 1): it => block(above: paragraph-spacing * 1.8, below: 0pt, sticky: true, stack(
    spacing: 4pt, // space between header and horizontal line underneath
    text(
      font: heading-font,
      size: heading-font-size,
      weight: "semibold",
      fill: accent-color,
      tracking: heading-letter-distance,
      upper(it.body),
    ),
    line(length: 100%, stroke: 0.5pt + accent-color),
  ))

  show heading.where(level: 2): it => block(above: paragraph-spacing, below: line-spacing * 1.1, sticky: true, text(
    font: heading-font,
    size: subtitle-font-size,
    weight: "semibold",
    fill: muted,
    it.body,
  ))

  // set heading(numbering: none)

  body
}

// Entry header: title | date on the first line, subtitle | location on the second.
#let entry(title, date, subtitle: none, location: none) = block(
  above: paragraph-spacing,
  below: line-spacing * 1.1,
  breakable: false,
  sticky: true,
)[
  #grid(
    columns: (1fr, auto),
    row-gutter: line-spacing * 0.9,
    align: (left, right),
    text(font: heading-font, size: body-font-size, weight: "semibold", title),
    text(font: heading-font, size: 9pt, fill: muted, date),
    ..if subtitle != none or location != none {
      (
        text(size: subtitle-font-size, style: "italic", fill: muted, if subtitle != none { subtitle }),
        text(size: 9.75pt, style: "italic", fill: muted, if location != none { location }),
      )
    },
  )
]

// Small bracketed link tag, e.g. [Code] or [Demo].
#let tag(url, label) = link(url, text(
  font: heading-font,
  size: subtitle-font-size,
  fill: accent-color,
)[\[#label\]])

// Course names and teaching terms share one aligned grid.
#let course-list(rows) = {
  set text(size: body-font-size)
  grid(
    columns: (1fr, auto), row-gutter: line-spacing, align: (left, right),
    ..rows
      .map(row => (
        row.at(0),
        text(font: heading-font, size: 9pt, fill: muted, row.at(1)),
      ))
      .flatten(),
  )
}
