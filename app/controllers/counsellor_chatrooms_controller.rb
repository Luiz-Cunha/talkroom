class CounsellorChatroomsController < ApplicationController
  def show
    @counsellor_chatroom = CounsellorChatroom.find(params[:id])
    @message = Message.new
  end
end
