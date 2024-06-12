class MessagesController < ApplicationController
  def create
    @client_chatroom = ClientChatroom.find(params[:client_chatroom_id])
    @message = Message.new(message_params)
    @message.chatroomable = @client_chatroom
    @message.sendable = current_user || current_counsellor
    if @message.save
      ClientChatroomChannel.broadcast_to(
        @client_chatroom,
        "teste!"
      )

      redirect_to client_chatroom_path(@client_chatroom)
    else
      render "client_chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
