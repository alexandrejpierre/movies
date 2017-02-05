module Api
	class PreferencesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def create
			@preference = Preference.new do |u|
				u.tmdbmovie_id = preferences_params[:tmdbmovie_id]
				u.likes = preferences_params[:likes]
				u.user_id = User.where("email = ?",preferences_params[:email]).first.id
				# 20170502: added the favorite field following its creation
				u.favorite=preferences_params[:favorite]
			end
			@preference.save
			respond_with @preference, location: nil
		end	
		
		private
		
		def preferences_params
			params.require(:preference).permit(:tmdbmovie_id,:email,:likes,:favorite)
		end
	end
end
