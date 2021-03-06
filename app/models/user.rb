class User < ActiveRecord::Base
	# 20.11.2016: added password to users
	has_secure_password
	
	# 20.11.2016: Changed pseudo to email
	# 20170131: changed movies to tmdbmovies 
	validates :email, presence: true, uniqueness: true
	# 20170225: added fb connected validation
	validates :fb_connected, presence: true, :inclusion => { :in => ["Y","N"]}
	has_many :preferences, dependent: :destroy
	has_many :tmdbmovies, through: :preferences
	# 20170320: added the relationship to the friendship table
	has_many :friendships, dependent: :destroy 
	# 20170426: added the relationship to the recommendations table
	has_many :recommendations, dependent: :destroy
end
