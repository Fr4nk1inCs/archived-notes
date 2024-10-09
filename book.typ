
#import "@preview/shiroa:0.1.1": *

#show: book

#book-meta(
  title: "Archived Notes",
  summary: [
    #prefix-chapter("index.typ")[Home]
  ],
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
