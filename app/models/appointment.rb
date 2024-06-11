class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :counsellor, optional: true
end
