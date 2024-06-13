class ClientChatroomChannel < ApplicationCable::Channel
  def subscribed
    client_chatroom = ClientChatroom.find(params[:id])
    stream_for client_chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
