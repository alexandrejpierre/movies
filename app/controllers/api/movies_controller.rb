module Api
	class MoviesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			# Pre-filter to remove non-relevant data
			@movies=Movie.where(Type:"movie").where.not(Poster:"N/A").where.not(Plot:"N/A").where.not(Title:"#DUPE#").where(freshest:"x")
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie'
					if key=='Year_min'
						@movies=@movies.where("Year >= ?",val)
					else if key=='Year_max'
						@movies=@movies.where("Year <= ?",val)
					else	
						@movies=@movies.where(key => val)
					end
					end
				end
			end
			respond_with @movies.first(100)
		end
	end
end

