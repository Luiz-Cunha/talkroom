class AddLocationToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :location, :string
  end
end
