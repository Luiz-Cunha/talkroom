import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["formToggle"]
  connect() {
    console.log("Working");
  }

  fire () {
    if (this.data.get("value") === "true"){
      this.formToggleTarget.classList.toggle("d-none");
    }
  }
}
