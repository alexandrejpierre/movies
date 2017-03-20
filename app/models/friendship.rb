class Friendship < ActiveRecord::Base
	# 20170320: added the relationships to the users table
	belongs_to :user 
end
