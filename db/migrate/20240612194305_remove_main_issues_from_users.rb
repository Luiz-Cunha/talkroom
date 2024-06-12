class RemoveMainIssuesFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :main_issues, :string
  end
end
