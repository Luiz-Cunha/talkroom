class PatientChannel < ApplicationCable::Channel
  def subscribed
    patient = User.find(params[:id])
    stream_for patient
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
