module Api
    class StatsController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
		# 20170716: updated the api with a group by of swipes by type
        def index
			render json: { count_swipes: Preference.where(user_id: params[:user_id]).count, count_favorites:  Preference.where(user_id: params[:user_id]).where(favorite: 'Y').count,  count_swipes_by_type: Preference.where(user_id: params[:user_id]).group(:likes,:favorite).count}
		end

    end
end
