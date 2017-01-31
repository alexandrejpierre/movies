class Preference < ActiveRecord::Base
	# 20.11.2016: set the exact list of values for likes
	validates :likes, presence: true, :inclusion => { :in => ["Y","N","N/A"]}
	validates :user_id, presence: true
	validates :movie_id, presence: true
	# 20170131: changed movie to tmdbmovie
	belongs_to :tmdbmovie
	belongs_to :user
end
