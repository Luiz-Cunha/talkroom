class Message < ApplicationRecord
  belongs_to :sendable, polymorphic: true
  belongs_to :chatroomable, polymorphic: true

  def sender?(sender)
    if sendable.is_a?(Counsellor)
      sendable.id == sender.id
    end
  end

end
