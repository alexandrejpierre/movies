module Api
        class FavoritesController < ApplicationController
                before_action :authenticate_token!
                respond_to :json
		
		# 20170306: created the index action to retrieve the favorites of a user
		# 20170307: used the relevant_columns scope to filter the output
                def index
                        @u_id = User.find_by("email = ?",params[:email]).id
			@favorites=Tmdbmovie.relevant_columns.joins(:preferences).where("preferences.user_id = ?",@u_id).where("preferences.favorite = 'Y'")
                	respond_with @favorites, location: nil
		end

		def update
			@u_id=User.find_by("email = ?",update_favorites_params[:email]).id
        		@status=Preference.where("user_id = ?",@u_id).find_by("tmdbmovie_id = ?",update_favorites_params[:id]).update_attributes(favorite: update_favorites_params[:favorite])
        		respond_with @status, location: nil
		end

		private

		# 20170306: created the update parameters
                def update_favorites_params
                        params.permit(:id,:email,:favorite)
                end		


        end
end
