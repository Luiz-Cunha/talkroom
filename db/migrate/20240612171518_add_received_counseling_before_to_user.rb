class AddReceivedCounselingBeforeToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :received_counseling_before, :boolean
  end
end
