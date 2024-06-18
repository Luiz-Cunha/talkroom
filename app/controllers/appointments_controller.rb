class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  skip_before_action :authenticate_user!, if: :check_user_type_counsellor

  def new
    @appointment = Appointment.new
    @appointment.user = current_user
  end

  def create
    @user = current_user
    @appointments = @user.appointments
    @previous_appointments = @user.appointments.where("schedule_time < ?", Time.now)
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      ActionCable.server.broadcast("appointments_channel", render_to_string(partial: "counsellors/appointment_accept", locals: {appointment: @appointment}))
      PatientChannel.broadcast_to(@user, render_to_string(partial: "users/appointment_user", locals: {appointment: @appointment}))
      redirect_to profile_user_path(current_user), notice: 'Appointment was successfully created.'
      # redirect_to profile_user_path(current_user, anchor: 'carouselExampleControls'), notice: 'Appointment was successfully created.'
    else
      render 'users/profile', status: :unprocessable_entity
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.counsellor = current_counsellor
    if @appointment.update(appointment_params)
      redirect_correct_page
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to profile_user_path(current_user), notice: 'Appointment was successfully deleted.'
  end

  private

  def check_user_type_counsellor
    current_counsellor && counsellor_signed_in?
  end

  def appointment_params
    params.require(:appointment).permit(:schedule_time, :symptom, :confirmation, :description, :counsellor_fullname)
  end

  def redirect_correct_page
    if counsellor_signed_in?
      if current_counsellor.instance_of?(Counsellor)
        redirect_to profile_counsellor_path(current_counsellor), notice: 'Appointment was successfully updated.'
      end
    elsif user_signed_in?
      if current_user.instance_of?(User)
        redirect_to profile_user_path(current_user), notice: 'Appointment was successfully updated.'
      end
    end
  end
end
