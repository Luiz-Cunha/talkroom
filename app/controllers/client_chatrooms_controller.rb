class ClientChatroomsController < ApplicationController

  def show
    @client_chatroom = ClientChatroom.find(params[:id])
    @message = Message.new
  end
end
