class AddTermsConditionsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :terms_conditions, :boolean
  end
end
