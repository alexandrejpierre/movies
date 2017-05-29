class Preference < ActiveRecord::Base
	# 20.11.2016: set the exact list of values for likes
	validates :likes, presence: true, :inclusion => { :in => ["Y","N","N/A"]}
	validates :user_id, presence: true
	# 20170530: added a condition to ensure unicity of (user_id, tmdbmovie_id)
	validates_uniqueness_of :user_id, :scope => :tmdbmovie_id
	# 20170131: changed movie to tmdbmovie
	validates :tmdbmovie_id, presence: true
	# 20170131: changed movie to tmdbmovie
	belongs_to :tmdbmovie
	belongs_to :user
end
