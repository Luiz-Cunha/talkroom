class Counsellor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  has_many :messages, as: :sendable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
end

