class DashboardController < ApplicationController
  def show
    @user = current_user
    @appointments = current_user.appointments
    @counsellors = Counsellor.all
  end
end
