class UsersController < ApplicationController
  before_action :authenticate_user!
  def profile
    @user = current_user
    @appointments = @user.appointments
    @previous_appointments = @user.appointments.where("schedule_time < ?", Time.now)
    # New appointment
    @appointment = Appointment.new
    @appointment.user = current_user
  end
end
