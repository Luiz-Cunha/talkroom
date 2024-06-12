class AddOtherIssuesToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :other_issues, :string
  end
end
