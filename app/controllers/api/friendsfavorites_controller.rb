module Api
    class FriendsfavoritesController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
	def index

	end
    end
end
