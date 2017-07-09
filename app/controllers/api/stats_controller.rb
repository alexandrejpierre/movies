module Api
    class StatsController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
        def index
			render json: { count_swipes: Preference.where(user_id: params[:user_id]).count, count_favorites:  Preference.where(user_id: params[:user_id]).where(favorite: 'Y').count }
		end

    end
end
