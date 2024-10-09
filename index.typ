#import "/book.typ": book-page

#show: book-page.with(title: "Archived Notes")

= Archived Notes

This website is a online book built by #link("https://typst.app")[Typst] and #link("https://github.com/Myriad-Dreamin/shiroa")[shiroa]. It contains my archived notes, including my thoughts, ideas, and some of my works.

== Why Typst?

#let TeX = style(styles => {
  set text(font: "New Computer Modern")
  let e = measure("E", styles)
  let T = "T"
  let E = text(1em, baseline: e.height * 0.31, "E")
  let X = "X"
  box(T + h(-0.15em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  set text(font: "New Computer Modern")
  let a-size = 0.66em
  let l = measure("L", styles)
  let a = measure(text(a-size, "A"), styles)
  let L = "L"
  let A = box(scale(x: 105%, text(a-size, baseline: a.height - l.height, "A")))
  box(L + h(-a.width * 0.67) + A + h(-a.width * 0.25) + TeX)
})

When it comes to writing digital notes, there are many choices. You can use markdown-based applications like #link("https://obsidian.md")[Obsidian], org-mode in #link("https://orgmode.org")[Emacs], or even pick your favorite code editor to write #LaTeX. I have tried all of these tools, but none of them satisfied me. In my opinion, a good note-taking tool should be easy-to-use, flexible, and powerful. That's why I choose Typst.

Typst has a simple syntax like markdown if you only need basic typesetting. But it also supports advanced features like #LaTeX. For example, here is a example of Typst syntax and its rendered result:

#grid(
  columns: (1fr, 1fr),
  ````typst
  = Heading 1

  Here is _a_ *line* of text.

  Here is a beautiful equation:
  $
    upright(e)^(upright(i) theta) = sin(theta) + upright(i) cos(theta)
  $

  Here is a code block:
  ```bash
  echo "Hello, Typst!"
  ```
  ````,
  block(inset: 1em)[
    #show heading: it => it
    = Heading 1

    Here is _a_ *line* of text.

    Here is a beautiful equation:
    $
      upright(e)^(upright(i) theta) = sin(theta) + upright(i) cos(theta)
    $

    Here is a code block:
    ```bash
    echo "Hello, Typst!"
    ```
  ],
)

For advanced users, Typst is also a good choice. It is a complete programming language with a powerful typesetting system. You can write your own macros, define your own commands, and even create your own themes. Typst is a perfect tool for writing notes, articles, and even books. Additionally, since it is a programming language, there are many powerful packages available for Typst. Here's some of the packages I use:
- #link("https://typst.app/universe/package/ctheorems")[ctheorems]: a great package for writing theorems and proofs,
- #link("https://typst.app/universe/package/cetz")[cetz]: like TikZ in LaTeX, a package for drawing beautiful diagrams,
- #link("https://typst.app/universe/package/lovelace")[lovelace]: a package for writing algorithms.

Thanks to its active community, it's very easy to write Typst in its online editor or any modern code editor. The great all-in-one language server #link("https://github.com/Myriad-Dreamin/tinymist")[tinymist] (also a CLI and a VSCode extension) can be integrated into your favorite editor with all the important features for writing like semantic highlighting, completion, error checking, code formatting (powered by #link("https://github.com/Enter-tainer/typstyle")[typstyle]) and even live preview (powered by #link("https://github.com/Enter-tainer/typst-preview")[typst-preview]). This is another reason why I choose Typst. I can write Typst in #link("https://neovim.io")[NeoVim] seamlessly with all the features I need.

For more information about Typst, you can visit the official website: #link("https://typst.app")[typst.app] and #link("https://typst.app/docs/")[its documentation].

== What's in this book?

To tell the truth, I just don't know how to take a note. Looking at my previous notes, it's just like a copy of blogs, textbooks, and papers, without additional information. I think it's time to change. After skimming some note-taking paradigms, I think there should be a destination for all incoming information. That's why I build this website.

For all incoming notes, I would first record them in my #link("https://notion.so")[Notion] workspace. When I have time, I will try to extract the essence of these notes and write them seriously in Typst (another reason I chose Typst!). This book is the final destination for all my notes. That's why it's _archived_.

There are exceptions that some notes in this website are not _archived_, most of them are course notes. Those notes would require more typesetting so I would write them in Typst directly.

== Why English?

I'm not a native English speaker. Then why is this book written in English? The reason is simple: I want to improve my English. I think writing in English is a good way to practice. So if you find any grammatical errors or awkward sentences in this book, please let me know. I would be very grateful.
