#let fix-list(body) = {

  // fix list/enum rendering
  show list.item: it => {
    let current-marker = if type(list.marker) == array {
      list.marker.at(0)
    } else {
      list.marker
    }
    let hanging-indent = measure(current-marker).width + terms.separator.amount
    set terms(hanging-indent: hanging-indent)
    if type(list.marker) == array {
      terms.item(
        current-marker,
        {
          // set the value of list.marker in a loop
          set list(marker: list.marker.slice(1) + (list.marker.at(0),))
          it.body
        },
      )
    } else {
      terms.item(current-marker, it.body)
    }
  }
  let counting-symbols = "1aAiI一壹あいアイא가ㄱ*"
  let consume-regex = regex("[^" + counting-symbols + "]*[" + counting-symbols + "][^" + counting-symbols + "]*")
  show enum.item: it => {
    if it.number == none {
      return it
    }
    let new-numbering = if type(enum.numbering) == function or enum.full {
      numbering.with(enum.numbering, it.number)
    } else {
      enum.numbering.trim(consume-regex, at: start, repeat: false)
    }
    let current-number = numbering(enum.numbering, it.number)
    let hanging-indent = measure(current-number).width + terms.separator.amount
    set terms(hanging-indent: hanging-indent)
    terms.item(
      strong(delta: -300, numbering(enum.numbering, it.number)),
      {
        if new-numbering != "" {
          set enum(numbering: new-numbering)
          it.body
        } else {
          it.body
        }
      },
    )
  }

  body
}
