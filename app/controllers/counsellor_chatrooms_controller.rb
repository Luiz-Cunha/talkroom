class CounsellorChatroomsController < ApplicationController
  skip_before_action :authenticate_user!
  def show

  if counsellor_signed_in? || supervisor_signed_in?
    @counsellor_chatroom = CounsellorChatroom.find(params[:id])
    unless current_counsellor == @counsellor_chatroom.counsellor || current_supervisor == @counsellor_chatroom.supervisor
      redirect_to root_path, alert: "You're not allowed to see this chat"
    end
  else
    redirect_to root_path, alert: "You're not allowed to see this chat"
  end
  @message = Message.new
  end
end
