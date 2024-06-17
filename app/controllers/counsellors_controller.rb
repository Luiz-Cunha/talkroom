class CounsellorsController < ApplicationController
  skip_before_action :authenticate_user!, if: :check_user_type_counsellor
  before_action :set_counsellor, only: [:show, :dashboard]
  def profile
    @counsellor = Counsellor.find(params[:id])
    @appointments_confirmed = @counsellor.appointments.where(confirmation: true)
    @appointments = @counsellor.appointments.where(confirmation: false)
  end

  def index
    @counsellors = Counsellor.all
  end

  def show
    @counsellor = Counsellor.find(params[:id])
  end

  def dashboard
    @counsellors = Counsellor.where(status: 'active')
  end


  private
  def check_user_type_counsellor
    current_counsellor && counsellor_signed_in?
  end

  def set_counsellor
    @current_counsellor = Counsellor.find(params[:id])
  end
end
