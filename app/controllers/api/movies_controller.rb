module Api
	class MoviesController < ApplicationController
		# before_action :authenticate_token!
		
		respond_to :json
		
		def index
			@movies=Movie.all
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'movie'
					@movies=@movies.where(key => val)
				end
			end
			respond_with @movies.first(100)
		end
	end
end
