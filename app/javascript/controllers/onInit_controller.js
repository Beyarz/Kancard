import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    const notes = document.querySelectorAll('[data-belongs-to]')

    notes.forEach((note) => {
    const column_id = note.dataset.belongsTo
      if (column_id !== "undefined" && column_id !== "") {
        const column = document.querySelector(`[data-id="${column_id}"]`)
        column.appendChild(note)
      }
    })
  }
}
