class AddCounsellorIdToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :counsellor_id, :integer
  end
end
