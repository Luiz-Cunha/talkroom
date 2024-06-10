class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :sendable, polymorphic: true
      t.references :chatroomable, polymorphic: true
      t.timestamps
    end
  end
end
