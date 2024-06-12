class AddIssuesArrayToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :issues_array, :string, array: true, default: []
  end
end
