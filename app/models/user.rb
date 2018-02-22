class User < ActiveRecord::Base

	def full_name
		"#{first_name} #{last_name}"
	end

  has_many :tasks

  accepts_nested_attributes_for :tasks

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :last_name,  presence: true
  validates :first_name, presence: true
  validates :password, :password_confirmation, presence: true, length: { minimum: 6 }
end
