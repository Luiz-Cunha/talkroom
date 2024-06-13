class MessagesController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    if params[:client_chatroom_id].present?
      @client_chatroom = ClientChatroom.find(params[:client_chatroom_id])

      if @client_chatroom.user == current_user || @client_chatroom.counsellor == current_counsellor
        @message = Message.new(message_params)
        @message.chatroomable = @client_chatroom
        @message.sendable = current_user || current_counsellor

        if @message.save
          ClientChatroomChannel.broadcast_to(
            @client_chatroom,
            render_to_string(partial: "message", locals: {message: @message})
          )
          head :ok
        else
          render json: { error: "Message could not be saved" }, status: :unprocessable_entity
        end
      else
        render json: { error: "Unauthorized" }, status: :unauthorized
      end
    else
      @counsellor_chatroom = CounsellorChatroom.find(params[:counsellor_chatroom_id])
      if @counsellor_chatroom.supervisor == current_supervisor || @counsellor_chatroom.counsellor == current_counsellor
        @message = Message.new(message_params)
        @message.chatroomable = @counsellor_chatroom
        @message.sendable = current_supervisor || current_counsellor

        if @message.save
          CounsellorChatroomChannel.broadcast_to(
            @counsellor_chatroom,
            render_to_string(partial: "message", locals: {message: @message})
          )
          head :ok
        else
          render json: { error: "Message could not be saved" }, status: :unprocessable_entity
        end
      else
        render json: { error: "Unauthorized" }, status: :unauthorized
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
