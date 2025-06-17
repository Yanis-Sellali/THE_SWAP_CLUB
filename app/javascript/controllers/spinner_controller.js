import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["spinner", "grid"]

  connect() {
    document.addEventListener("turbo:before-fetch-request", () => {
      this.spinnerTarget.classList.remove("d-none")
      this.gridTarget.classList.add("opacity-50")
    })

    document.addEventListener("turbo:frame-load", () => {
      this.spinnerTarget.classList.add("d-none")
      this.gridTarget.classList.remove("opacity-50")
      this.gridTarget.classList.add("fade-in")
    })
  }
}
