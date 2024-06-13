class AddEducationalInformationToCounsellors < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :university_name, :string
    add_column :counsellors, :university_id, :string
    add_column :counsellors, :degree_program, :string
    add_column :counsellors, :year_of_study, :integer
    add_column :counsellors, :expected_graduation_date, :date
  end
end
