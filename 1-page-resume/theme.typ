#let name-size = 18pt
#let body-font-color = rgb("#000000")
// Apply this exclusively to your name, section headers, and horizontal divider rules
#let accent-color = rgb("#1b365d") //rgb("#0f2d59")
#let muted = rgb("555555")
#let heading-font = "Inter"
#let body-font-size = 11pt
#let date-font-size = 9pt
#let title-size = 11pt
#let section-distance = 5pt
#let footer-font-size = 8pt
#let footer-font-color = rgb("777777")
#let paragraph-spacing = 8pt
#let line-spacing = 6.5pt
#let list-indent = 6.5pt
#let is-justified = false

#let apply-theme(body, text-size: body-font-size, text-color: body-font-color) = {
  set document(title: "Mahdi Moghaddami | Curriculum Vitae", author: "Mahdi Moghaddami")
  set text(
    font: "Libertinus Serif", // Or "Inter", "Google Sans", "New Computer Modern", etc.
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
  set list(indent: list-indent, body-indent: 6pt, spacing: 9pt, marker: text(fill: accent-color, sym.bullet))

  // numbered list
  set enum(indent: list-indent, body-indent: 8pt, spacing: 9.5pt)

  // set heading(numbering: none)

  body
}

// Small bracketed link tag, e.g. [Code] or [Demo].
#let tag(url, label) = link(url, text(font: heading-font, size: 8.25pt, fill: accent-color)[\[#label\]])


// Reusable section divider
#let section(title) = {
  text(10.5pt, weight: "bold", fill: accent-color, upper(title))
  v(-8pt)
  line(length: 100%, stroke: 0.4pt + accent-color)
  v(-4pt)
}
