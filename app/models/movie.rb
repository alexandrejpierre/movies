class Movie < ActiveRecord::Base
	has_many :preferences, dependent: :destroy 
	has_many :users, through: :preferences
end
