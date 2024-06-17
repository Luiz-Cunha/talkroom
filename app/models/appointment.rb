class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :counsellor, optional: true
  def counsellor_fullname
    counsellor.fullname
  end
end
