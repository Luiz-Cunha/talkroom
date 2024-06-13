class AddAddressToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :address, :string
  end
end
