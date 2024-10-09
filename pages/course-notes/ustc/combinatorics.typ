#import "/book.typ": book-page
#import "/templates/fix-list.typ": fix-list

#import "@preview/ctheorems:1.1.2": *

#show: thmrules

#show: book-page.with(title: "组合数学 Combinatorics")
#show: fix-list

#set text(lang: "zh")
#set heading(numbering: "1.")

#let theorem = thmbox("theorem", "定理", base_level: 1)
#let lemma = thmbox("lemma", "引理")
#let definition = thmbox("definition", "定义")
#let example = thmbox("example", "例题")
#let corollary = thmbox("corollary", "推论")
#let proposition = thmbox("proposition", "命题")
#let remark = thmbox("remark", "注")
#let proof = thmproof("proof", "证明")

#align(center, text(size: 30pt, weight: "bold")[组合数学 Combinatorics])

#outline()

= 鸽巢原理

= 排列与组合

= 二项式定理

= 容斥原理

= 生成函数

= 递推关系
