module Api
	class UsersController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		# 20170220: added an index action to log the user in ; check if the couple (email,password) exists in the db
		
		def index
			@a=User.find_by(email: params[:email]).try(:authenticate, params[:password])
			respond_with @a
		end
		
		def create
			@user = User.new(user_params)
			@user.save
			respond_with @user 
		end
		
		def update
			@status = User.find_by(id: user_update_params[:id]).update_attributes(fb_connected: user_update_params[:fb_connected])
			respond_with @status
		end
		
		private
		
		def user_params
			params.require(:user).permit(:pseudo,:email,:name,:first_name,:fb_connected,:password)
		end
		
		def user_update_params
			params.permit(:id,:fb_connected)
		end
	end
end
