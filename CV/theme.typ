#let name-size = 18pt
#let body-font-color = rgb("#000000")
// Apply this exclusively to your name, section headers, and horizontal divider rules
#let accent-color = rgb("#1b365d") //rgb("#0f2d59")
#let body-font-size = 10pt
#let date-font-size = 9pt
#let title-size = 11pt
#let section-distance = 5pt

#let apply-theme(body, text-size: body-font-size, text-color: body-font-color) = {
  set page(
    paper: "us-letter",
    margin: (x: 36pt, y: 30pt),
  )

  // Set typography
  set text(
    font: "New Computer Modern", // Or "Inter"
    size: body-font-size,
    fill: body-font-color,
  )

  // set par(justify: false, leading: 0.55em)

  body
}


// Reusable section divider
#let section(title) = {
  text(10.5pt, weight: "bold", fill: accent-color, upper(title))
  v(-8pt)
  line(length: 100%, stroke: 0.4pt + accent-color)
  v(-4pt)
}
