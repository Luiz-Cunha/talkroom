class AddTermsConditionsToCounsellor < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :terms_conditions, :boolean
  end
end
