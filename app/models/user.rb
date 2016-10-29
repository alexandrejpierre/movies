class User < ActiveRecord::Base
	validates :pseudo, presence: true, uniqueness: true
	has_many :preferences, dependent: :destroy
	has_many :movies, through: :preferences
end
