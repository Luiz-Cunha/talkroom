class User < ApplicationRecord
  has_many :appointments
  has_many :counsellors, through: :appointments
  has_many :messages, as: :sendable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
