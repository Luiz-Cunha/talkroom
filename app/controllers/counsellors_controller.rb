class CounsellorsController < ApplicationController
  skip_before_action :authenticate_user!, if: :check_user_type_counsellor
  def profile
    @counsellor = Counsellor.find(params[:id])
    @patients = @counsellor.users
    @appointments = Appointment.where(confirmation: false)
  end

  private

  def check_user_type_counsellor
    current_counsellor && counsellor_signed_in?
  end
end
