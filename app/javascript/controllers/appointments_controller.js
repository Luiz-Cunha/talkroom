import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="appointments"
export default class extends Controller {
  static targets = ["appointments"]

  connect() {
    this.subscription = createConsumer().subscriptions.create("AppointmentsChannel", {
      received: (data) => {
        this.appointmentsTarget.insertAdjacentHTML('afterbegin', data)
        this.#updateScrollerClass()
      }
    })
  }

  disconnect() {
    this.subscription.unsubscribe()
  }

  #updateScrollerClass() {
    if (this.appointmentsTarget.childElementCount > 0) {
      this.appointmentsTarget.classList.add('scroller')
    } else {
      this.appointmentsTarget.classList.remove('scroller')
    }
  }
}
