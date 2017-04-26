class Recommendation < ActiveRecord::Base
	# 20170426: added relationships and validations
	belongs_to :user
	belongs_to :tmdbmovie
	validates :user_id, presence: true
	validates :tmdbmovie_id, presence: true
end
