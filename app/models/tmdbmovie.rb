class Tmdbmovie < ActiveRecord::Base
	# 20170131: added the lines
	has_many :preferences, dependent: :destroy 
	has_many :users, through: :preferences
end
