import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "textarea" ]

  clearInput() {
    this.textareaTarget.value = null
  }
}
