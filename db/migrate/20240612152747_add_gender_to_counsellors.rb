class AddGenderToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :gender, :string
  end
end
