class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :counsellor, optional: true
  validates :symptom, presence: true

  def counsellor_fullname
    counsellor.fullname
  end
end
