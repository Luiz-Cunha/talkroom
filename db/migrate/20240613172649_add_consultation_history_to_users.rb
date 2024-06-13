class AddConsultationHistoryToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :consultation_history, :text
  end
end
