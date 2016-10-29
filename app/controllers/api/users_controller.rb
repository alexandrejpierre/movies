module Api
	class UsersController < ApplicationController
		# before_action :authenticate_token!
		
		respond_to :json
		
		def create
			@user = User.new(user_params)
			@user.save
			respond_with @user 
		end	
		
		private
		
		def users_params
			params.require(:user).permit(:pseudo,:email,:name,:first_name,:fb_connected)
		end
	end
end
