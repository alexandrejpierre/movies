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
			# 20170306: Added the relevant_columns scope
			# 20170317: Rollbacked the relevant_columns
			@movies=Tmdbmovie.joins("LEFT OUTER JOIN preferences ON preferences.tmdbmovie_id = tmdbmovies.id AND preferences.user_id=#{@u_id}").where("preferences.created_at is ?",nil).where(adult: false)
			# Filtering based on sent parameters
			# 20170307: changed movie to tmdbmovie
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'tmdbmovie' and key !='email' and key !='movie'
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
			# 20170306: modified the count to take into account the columns scope
			render json: { count: @movies.count(:all), data: @movies.order(popularity: :desc).first(100) }
		end
	end
end
