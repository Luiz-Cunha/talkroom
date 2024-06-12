class User < ApplicationRecord
  has_many :appointments
  has_many :counsellors, through: :appointments
  has_many :messages, as: :sendable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation :remove_empty_issues_array

  private

  def remove_empty_issues_array
    self.issues_array = issues_array.reject!(&:empty?) unless issues_array.nil?
  end

end
