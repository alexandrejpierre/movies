module Api
	class TmdbmoviesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			# Initialisation from the tmdb table
			# 20170203: retrieval of the user_id based on their email
			@u_id=User.where("email = ?",params[:email]).first.id
			# 20170131: Removal of adult movies
			# 20170203: Removal of the films that the users has already seen
			@movies=Tmdbmovie.joins("LEFT OUTER JOIN preferences ON preferences.tmdbmovie_id =tmdbmovies.id AND preferences.user_id=#{@u_id}").where("preferences.created_at is ?",nil).where(adult: false)
			# Filtering based on sent parameters
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie' and key !='email'
					if key=='release_year'
						@movies=@movies.where(release_year: val.slice(0,4)..val.slice(4,9))
			# 20170122: Added the elsif clause to fix the filtering on Genre and Country
			# 20170205: added spoken_languages and production_countries to the filter
					elsif (key=='genres' or key=='spoken_languages' or key=='production_countries')
						@movies=@movies.where("\"#{key}\" LIKE ?","%#{val}%")
					else
						@movies=@movies.where(key => val)
					end
				end
			end
			
			# 20170122: random sampling of data
			# 20170130: random sampling commenting
			#max=@movies.count
			#@movies.each do |x|
				#x.assign_attributes(rank: rand(max))
			#end
			
			# Added a count of the number of movies
			# 20170122: changed the number of movies returned from 100 to 500
			# 20170122: identification of the returned movies thanks to the random sampling
			# 20170131: sorted by popularity and limit to 100
			render json: { count: @movies.count, data: @movies.order(popularity: :desc).first(100) }
		end
	end
end
