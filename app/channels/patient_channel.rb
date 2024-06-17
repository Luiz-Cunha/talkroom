class PatientChannel < ApplicationCable::Channel
  def subscribed
    patient_chatroom = User.find(params[:id])
    stream_for patient_chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
