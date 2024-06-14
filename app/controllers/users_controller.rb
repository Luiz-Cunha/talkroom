class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    @appointments = @user.appointments
    # This chatroom it created for presentation
    @chatroom = ClientChatroom.last
  end

end
