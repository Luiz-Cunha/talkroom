import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="patients"
export default class extends Controller {
  connect() {
    this.subscription = createConsumer().subscriptions.create("PatientChannel", {
      received: (data) => {
        console.log(data);
        //this.appointmentsTarget.insertAdjacentHTML('afterbegin', data)
      }
    })
  }
}
