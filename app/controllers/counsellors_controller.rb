class CounsellorsController < ApplicationController
  def profile
    @counsellor = Counsellor.find(params[:id])
    @patients = @counsellor.users
    @appointments = Appointment.where(confirmation: false)
  end
end
