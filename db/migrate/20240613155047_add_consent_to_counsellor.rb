class AddConsentToCounsellor < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :consent, :boolean
  end
end
