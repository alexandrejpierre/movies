class Preference < ActiveRecord::Base
	# 20.11.2016: set the exact list of values for likes
	validates :likes, presence: true, :inclusion => { :in => ["Y","N","N/A"]}
	belongs_to :movie
	belongs_to :user
end
