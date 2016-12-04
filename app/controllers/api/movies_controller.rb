module Api
	class MoviesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			# Pre-filter to remove non-relevant data
			@movies=Movie.where(Type:"movie").where.not(Poster:"N/A").where.not(Plot:"N/A").where.not(Title:"#DUPE#").where(freshest:"x").where.not(Genre:"Short")
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie'
					if key=='Year'
						@movies=@movies.where(Year: val.slice(0,4)..val.slice(4,9))
					else	
						@movies=@movies.where(key => val)
					end
				end
			end
			respond_with @movies.where.not(imdbVotes:"N/A").order(imdbVotes: :desc).first(100)
		end
	end
end
