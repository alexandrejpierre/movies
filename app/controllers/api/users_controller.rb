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
			@user = User.find_by(id: user_update_params[:id])
			user_update_params.each do |key,val|
				if key != "id"
					@user.update_attributes(key => val)
				end
			end
			respond_with @user
		end
		
		private
		
		def user_params
			params.require(:user).permit(:pseudo,:email,:name,:first_name,:fb_connected,:password, :gender, :age_range, :locale, :picture_url)
		end
		
		def user_update_params
			params.permit(:id,:fb_connected, :gender, :age_range, :locale, :picture_url)
		end
	end
end
