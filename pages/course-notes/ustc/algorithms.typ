#import "/book.typ": book-page
#import "/templates/fix-list.typ": fix-list

#import "@preview/ctheorems:1.1.2": *

#show: thmrules

#show: book-page.with(title: "Design and Analysis of Algorithms")
#show: fix-list

#set heading(numbering: "1.")

#let theorem = thmbox("theorem", "Theorem")
#let lemma = thmbox("lemma", "Lemma")
#let definition = thmbox("definition", "Definition")
#let example = thmbox("example", "Example")
#let corollary = thmbox("corollary", "Corollary")
#let proposition = thmbox("proposition", "Proposition")
#let remark = thmbox("remark", "Remark")
#let proof = thmproof("proof", "Proof")

#align(
  center,
  text(size: 30pt, weight: "bold")[Design and Analysis of Algorithms],
)
