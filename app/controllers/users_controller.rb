class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    @appointments = @user.appointments
  end

  def show
    @user = current_user
    @appointments = current_user.appointments
    @counsellors = Counsellor.all
  end

end
