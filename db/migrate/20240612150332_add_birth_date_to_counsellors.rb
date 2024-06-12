class AddBirthDateToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :birthdate, :date
  end
end
