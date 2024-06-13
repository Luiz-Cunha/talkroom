class CounsellorChatroomChannel < ApplicationCable::Channel
  def subscribed
    counsellor_chatroom = CounsellorChatroom.find(params[:id])
    stream_for counsellor_chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
