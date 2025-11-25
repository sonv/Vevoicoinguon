// main.typ
#set page(
  width: 8.5in,
  height: 11in,
  margin: 1in,
)

// Center all chapter titles (= Heading level 1)
#show heading.where(level: 1): it => align(center)[#it]

// ---------------- Title Page ----------------
#align(center)[
  #heading(level: 1)[Return to The Roots]
  #v(1em)
  #heading(level: 2)[Nguyễn Tài]
]

#pagebreak()

// ---------------- Table of Contents ----------------
= Table of Contents
#outline()

#pagebreak()
#include "preface.typ"
// ---------------- Chapters 1–30 ----------------
#for i in range(1, 31) [
  #pagebreak()
  #include (str(i) + ".typ")
]
