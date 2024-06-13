class AddCounselingExperienceToCounsellor < ActiveRecord::Migration[7.1]
  def change
    add_column :counsellors, :counseling_experience, :boolean
  end
end
