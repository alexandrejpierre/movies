class Preference < ActiveRecord::Base
	validates :like, presence: true
	belongs_to :movie
	belongs_to :user
end
