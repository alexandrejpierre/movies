class User < ActiveRecord::Base
	# 20.11.2016: added password to users
	has_secure_password
	
	# 20.11.2016: Changed pseudo to email
	validates :email, presence: true, uniqueness: true
	has_many :preferences, dependent: :destroy
	has_many :movies, through: :preferences
end
