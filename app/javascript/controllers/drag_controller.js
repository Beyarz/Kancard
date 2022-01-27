import Rails from '@rails/ujs'
import { Controller } from "stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this),
      animation: 150,
      group: "shared"
    })
  }

  end(event) {
    const id = event.item.dataset.id
    const board_id = event.item.dataset.boardId
    const newParentId = event.to.dataset.id

    // Acts_as_list starts at 0 while Sortable starts at 1, so we pad the value with 1
    const padding = 1

    let data = new FormData
    data.append("position", event.newIndex + padding)
    data.append("parent_column_id", newParentId)

    // When switching from the notes column to cards column,
    // you want to remove the fixed size because you want
    // the note to take up all the available space
    event.item.classList.toggle("is-one-quarter")

    Rails.ajax({
      url: this.data
        .get("url")
        .replace(":id", id)
        .replace(":board_id", board_id),
      type: 'PATCH',
      data: data
    })
  }
}
