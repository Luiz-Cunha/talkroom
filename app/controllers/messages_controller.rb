class MessagesController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    if params[:client_chatroom_id].present?
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
      # All Create A Message for client chatroom
    else
      #create a message for the Counsellor chatroom
      @counsellor_chatroom = CounsellorChatroom.find(params[:counsellor_chatroom_id])
      @message = Message.new(message_params)
      @message.chatroomable = @counsellor_chatroom
      @message.sendable = current_supervisor || current_counsellor
      @message.save
      CounsellorChatroomChannel.broadcast_to(
        @counsellor_chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
