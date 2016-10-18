module Api
	class MoviesController < ApplicationController
		# before_action :authenticate_token!
		
		respond_to :json
		
		def index
			# Pre-filter to remove non-relevant data
			@movies=Movie.where(Type:"movie").where.not(Poster:"N/A").where.not(Plot:"N/A")
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie'
					@movies=@movies.where(key => val)
				end
			end
			respond_with @movies.first(100)
		end
	end
end
