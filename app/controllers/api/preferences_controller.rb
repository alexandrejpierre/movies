module Api
	class PreferencesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def create
			@preference = Preference.new(preferences_params)
			@preference.save
			respond_with @preference 
		end	
		
		private
		
		def preferences_params
			params.require(:preference).permit(:movie_id,:user_id,:likes)
		end
	end
end
