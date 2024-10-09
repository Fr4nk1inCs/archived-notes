
#import "@preview/shiroa:0.1.1": *

#show: book

#book-meta(
  title: "Archived Notes",
  repository: "https://github.com/Fr4nk1inCs/archived-notes",
  summary: [
    #prefix-chapter("index.typ")[Home]
    = Course Notes
    - #chapter(none)[USTC]
      - #chapter("pages/course-notes/ustc/combinatorics.typ")[组合数学 Combinatorics]
      - #chapter("pages/course-notes/ustc/algorithms.typ")[Design and Analysis of Algorithms]
    = Research Notes
    = Thoughts
    = Ideas
  ],
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
