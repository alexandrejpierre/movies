module Api
	class PreferencesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def create
			@user = User.where("email = ?",preferences_params[:email]).select(:id)
			@preference = Preference.new(movie_id: preferences_params[:movie_id], likes: preferences_params[:likes], user_id: @user)
			@preference.save
			respond_with @preference 
		end	
		
		private
		
		def preferences_params
			params.require(:preference).permit(:movie_id,:email,:likes)
		end
	end
end
