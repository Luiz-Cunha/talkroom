class AddCoordinatesToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :latitude, :float
    add_column :counsellors, :longitude, :float
  end
end
