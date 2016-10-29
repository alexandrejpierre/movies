class Preference < ActiveRecord::Base
	validates :likes, presence: true
	belongs_to :movie
	belongs_to :user
end
