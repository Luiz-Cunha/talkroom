class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @appointment = Appointment.new
    @appointment.user = current_user
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      redirect_to profile_user_path(current_user), notice: 'Appointment was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to profile_user_path(current_user), notice: 'Appointment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to profile_user_path(current_user), notice: 'Appointment was successfully deleted.'
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:schedule_time, :symptom, :confirmation, :counsellor_id, :description)
  end
end
