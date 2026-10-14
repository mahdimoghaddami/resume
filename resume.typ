#import "theme.typ": *;

#show: apply-theme.with(text-size: 9.5pt)

// Header
#align(center)[
  #text(name-size, weight: "bold", fill: accent-color)[Mahdi Moghaddami]
  #v(-12pt)
  #text(size: 9pt)[
    +1 (248) 270-5982 | #link("mailto:me@mahdimoghaddami.com")[me\@mahdimoghaddami.com] | Rochester Hills, MI\
    #link("https://mahdimoghaddami.com")[mahdimoghaddami.com] |
    #link("https://linkedin.com/in/mahdimoghaddami")[linkedin.com/in/mahdimoghaddami] |
    #link("https://github.com/mahdimoghaddami")[github.com/mahdimoghaddami] \
  ]
]

#v(6pt)

#section("Education")
#entry(
  "Oakland University",
  "December 2027 (expected)",
  "PhD in Computer Science (GPA: 3.97)",
  "Rochester Hills, MI",
)
#entry(
  "Iran University of Science and Technology",
  "Feb 2022",
  "BSc in Computer Engineering (GPA: 3.68)",
  "Tehran, Iran",
)

#v(section-distance)

#section("Skills")
- *Languages:* Python, C++, C\#, JavaScript
- *Frameworks & Libraries:* PyTorch, Scikit-learn, Pandas, NumPy, Spark
- *Tools & Infrastructure:* Git, Docker, GCP, Linux, uv, Ruff
