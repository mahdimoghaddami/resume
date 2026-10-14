#let name-size = 18pt
#let body-font-color = rgb("#000000")
// Apply this exclusively to your name, section headers, and horizontal divider rules
#let accent-color = rgb("#1b365d") //rgb("#0f2d59")
#let body-font-size = 9.5pt
#let title-size = 11pt
#let section-distance = 7pt

#let apply-theme(body, text-size: body-font-size, text-color: body-font-color) = {
  set page(
    paper: "us-letter",
    margin: (x: 36pt, y: 30pt),
  )

  // Set typography
  set text(
    font: "New Computer Modern", // Or "Inter"
    size: text-size,
    fill: text-color,
  )

  set par(justify: false, leading: 0.55em)

  body
}


// Reusable section divider
#let section(title) = {
  text(10.5pt, weight: "bold", fill: accent-color, upper(title))
  v(-8pt)
  line(length: 100%, stroke: 0.6pt + accent-color)
  v(-4pt)
}

// Reusable entry header
#let entry(title, right_top, subtitle, right_bottom) = {
  block(width: 100%, breakable: false)[
    *#title*
    #h(1fr)
    #text(fill: body-font-color, right_top) \
    #if subtitle != none [_\#subtitle_]
    #h(1fr)
    #text(fill: body-font-color, size: 8.5pt, right_bottom)
  ]
}
