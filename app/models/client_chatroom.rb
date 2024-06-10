class ClientChatroom < ApplicationRecord
  has_many :messages, as: :chatroomable
  belongs_to :user
  belongs_to :counsellor
end
