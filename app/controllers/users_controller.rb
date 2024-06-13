class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
    @appointments = current_user.appointments
  end
end
