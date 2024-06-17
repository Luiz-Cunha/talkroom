class AppointmentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appointments_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
