module Api
	class FriendshipsController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def create
			# 20170422: covered the case when the fb id is not found in the db with begin/rescue next
			eval(friendship_params[:friend_id]).each do |f|
				begin
					# 20170326: Mutualization of friend_id calculation
					@friend_id=User.find_by("fb_id = ?",f).id
					# 20170326: Friendship one way user->friend
					@friendship1 = Friendship.new do |u|
						u.user_id=friendship_params[:user_id]
						u.friend_id=@friend_id
					end
					@friendship1.save
					# 20170326: Friendship return friend->user
					@friendship2 = Friendship.new do |u|
						u.user_id=@friend_id
						u.friend_id=friendship_params[:user_id]
					end
					@friendship2.save
				rescue
					next
				end
			end
			respond_with nil, location: nil	
		end
		
		
		private
		
		def friendship_params
			params.require(:friendship).permit(:user_id,:friend_id)
		end
		

	end
end
