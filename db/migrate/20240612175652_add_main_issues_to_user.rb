class AddMainIssuesToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :main_issues, :string
  end
end
