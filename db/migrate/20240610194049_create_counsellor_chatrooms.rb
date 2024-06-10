class CreateCounsellorChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :counsellor_chatrooms do |t|
      t.references :counsellor, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
