module Api
	class MoviesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			# Pre-filter to remove non-relevant data
			#@movies=Movie.where(Type:"movie").where.not(Poster:"N/A").where.not(Plot:"N/A").where.not(Title:"#DUPE#").where(freshest:"x").where.not(IsShort:"x")
			# 20170119: usage of the scope column instead of calculating it on the fly
			@movies=Movie.where(scope:"x")
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie'
					if key=='Year'
						@movies=@movies.where(Year: val.slice(0,4)..val.slice(4,9))
			# 20170122: Added the elsif clause to fix the filtering on Genre and Country
					elsif (key=='Genre' or key=='Country')
						@movies=@movies.where("\"#{key}\" LIKE ?","%#{val}%")
					else
						@movies=@movies.where(key => val)
					end
				end
			end
			# Added a count of the number of movies
			render json: { count: @movies.count, data: @movies.where.not(imdbVotes:"N/A").order(imdbVotes: :desc).first(100) }
		end
	end
end
