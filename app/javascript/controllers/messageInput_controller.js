import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "textarea" ]

  clearInput() {
    setTimeout(() => {
      this.textareaTarget.value = null
    }, 1500)
  }
}
