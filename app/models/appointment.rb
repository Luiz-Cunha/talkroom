class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :counsellor, optional: true
  validates :symptom, :schedule_time, presence: true

  def counsellor_fullname
    counsellor.fullname
  end
end
