class AddCounselingExperienceDescriptionToCounsellor < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :counseling_experience_description, :text
  end
end
