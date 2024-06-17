import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="patients"
export default class extends Controller {
  static targets = ["patientsAppointments"]
  static values = { userid: Number }
  connect() {
    this.subscription = createConsumer().subscriptions.create({ channel: "PatientChannel", id: this.useridValue }, {
      received: (data) => {
        console.log(data);
        //this.patientsAppointmentsTarget.insertAdjacentHTML('afterbegin', data)
      }
    })
  }
}
