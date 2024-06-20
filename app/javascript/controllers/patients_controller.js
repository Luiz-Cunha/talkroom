import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="patients"
export default class extends Controller {
  static targets = ["patientsAppointments", "hideForm"]
  static values = { userid: Number }
  connect() {
    this.subscription = createConsumer().subscriptions.create({ channel: "PatientChannel", id: this.useridValue }, {
      received: (data) => {
        this.patientsAppointmentsTarget.insertAdjacentHTML('afterbegin', data)
      }
    })
  }

  resetForm(event){
    event.target.reset()
    this.hideFormTarget.classList.toggle("d-none")
  }

  disconnect() {
    console.log("Unsubscribed from the patients controller")
    this.subscription.unsubscribe()
  }
}
