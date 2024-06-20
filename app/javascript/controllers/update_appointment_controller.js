import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="update-appointment"
export default class extends Controller {
  static targets = ["cardSpecific"]
  static values = { userid: Number }
  connect() {
    console.log(this.cardSpecificTargets)
    this.subscription = createConsumer().subscriptions.create({ channel: "UpdateAppointmentChannel", id: this.useridValue }, {
      received: (data) => {
        console.log(data)
        const cardSpecific = this.cardSpecificTargets.filter((target) => parseInt(target.dataset.appointmentId, 10) === data.appointmentId )[0]
        console.log(cardSpecific)
        cardSpecific.outerHTML = data.appointmentHtml
      }
    })
  }

  disconnect() {
    console.log("Unsubscribed from the update controller")
    this.subscription.unsubscribe()
  }
}
