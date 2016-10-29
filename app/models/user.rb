class User < ActiveRecord::Base
	validates :pseudo, presence: true, uniqueness: true
	has_many :preferences
	has_many :movies, through: :preferences
end
