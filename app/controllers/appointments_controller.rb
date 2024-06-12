class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @appointment.user = current_user
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      redirect_to profile_user_path(current_user)
    else
      render :new
    end
  end

  def update
    @counsellor = current_counsellor.id
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      profile_counsellor_path(@counsellor)
    else
      render 'counsellors/profile'
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:schedule_time, :symptom, :confirmation, :counsellor_id)
  end
end
