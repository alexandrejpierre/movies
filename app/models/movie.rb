class Movie < ActiveRecord::Base
	# 20170131: commented out the lines
	#has_many :preferences, dependent: :destroy 
	#has_many :users, through: :preferences
end
