class CounsellorChatroom < ApplicationRecord
  has_many :messages, as: :chatroomable
  belongs_to :counsellor
  belongs_to :supervisor
end
