class AddConsentToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :consent, :boolean
  end
end
