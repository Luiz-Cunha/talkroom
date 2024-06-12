class AddFullNameToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :fullname, :string
  end
end
