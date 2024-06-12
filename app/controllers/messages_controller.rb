class MessagesController < ApplicationController
  def create
    @client_chatroom = ClientChatroom.find(params[:client_chatroom_id])
    @message = Message.new(message_params)
    @message.chatroomable = @client_chatroom
    @message.sendable = current_user || current_counsellor
    @message.save
    ClientChatroomChannel.broadcast_to(
      @client_chatroom,
      render_to_string(partial: "message", locals: {message: @message})
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
