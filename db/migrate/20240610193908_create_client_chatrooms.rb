class CreateClientChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :client_chatrooms do |t|
      t.references :user, null: false, foreign_key: true
      t.references :counsellor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
