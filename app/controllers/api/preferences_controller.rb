module Api
	class PreferencesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def create
			@preference = Preference.new do |u|
				u.tmdbmovie_id = preferences_params[:tmdbmovie_id]
				u.likes = preferences_params[:likes]
				u.user_id = User.find_by("email = ?",preferences_params[:email]).id
				# 20170502: added the favorite field following its creation
				u.favorite=preferences_params[:favorite]
			end
			@preference.save
			respond_with @preference, location: nil
		end	

		def update
			@u_id=User.find_by("email = ?",update_preferences_params[:email]).id
			@status=Preference.where("user_id = ?",@u_id).find_by("movie_id = ?",update_preferences_params[:id]).update_attributes(favorite: update_preferences_params[:favorite])
			respond_with  @status, location: nil
		end
		
		private
		
		def preferences_params
			params.require(:preference).permit(:tmdbmovie_id,:email,:likes,:favorite)
		end

		def update_preferences_params
			params.permit(:id,:email,:favorite)
		end
	end
end
