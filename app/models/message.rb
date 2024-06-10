class Message < ApplicationRecord
  belongs_to :sendable, polymorphic: true
  belongs_to :chatroomable, polymorphic: true

end
