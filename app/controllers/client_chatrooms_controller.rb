class ClientChatroomsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    if counsellor_signed_in? || user_signed_in?
      @client_chatroom = ClientChatroom.find(params[:id])
      unless current_counsellor == @client_chatroom.counsellor || current_user == @client_chatroom.user
        redirect_to root_path, alert: "You're not allowed to see this chat"
      end
    else
      redirect_to root_path, alert: "You're not allowed to see this chat"
    end
    @message = Message.new
  end
end
