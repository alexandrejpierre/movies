module Api
    class RecommendationsController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
        def index
			if Preference.where(user_id: params[:user_id]).count > 100
				# Determines the latest recommendations
				max=Recommendation.where(params[:user_id]).maximum(:created_at)
				# Excludes the movies that the user has already liked 
				@recommendations=Recommendation.joins("LEFT OUTER JOIN preferences ON preferences.tmdbmovie_id = recommendations.tmdbmovie_id AND preferences.user_id=#{params[:user_id]}").where("preferences.created_at is ?",nil)
				# Filters on the latest recommendations
				@recommendations=@recommendations.where(created_at: max.midnight..Time.now)
            else
				@recommendations=false
			end
            respond_with @favorites, location: nil
		end
	
    end
end
