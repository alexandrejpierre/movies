module Api
    class FavoritesController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
		# 20170306: created the index action to retrieve the favorites of a user
		# 20170307: used the relevant_columns scope to filter the output
		# 20170317: rollbacked relevant columns
        def index
            #obsolete: @u_id = User.find_by("email = ?",params[:email]).id
			@favorites=Tmdbmovie.joins(:preferences).where("preferences.user_id = ?",params[:user_id]).where("preferences.favorite = 'Y'")
            respond_with @favorites, location: nil
		end

		def update
			#obsolete: @u_id=User.find_by("email = ?",update_favorites_params[:email]).id
			# 20170612: improved the API w/ a find or create in the case where the user would like to put a movie in favorites that he has not liked before
			@preference=Preference.where(user_id: update_favorites_params[:user_id]).find_or_create_by(tmdbmovie_id: update_favorites_params[:id]) do |p|
				p.user_id=update_favorites_params[:user_id]
				p.tmdbmovie_id=update_favorites_params[:id]
				p.likes='Y'
			end
        	@status=@preference.update_attributes(favorite: update_favorites_params[:favorite])
        	respond_with @status, location: nil
		end

		private

		# 20170306: created the update parameters
		def update_favorites_params
			params.permit(:id,:user_id,:favorite)
		end		
		
    end
end
