module Api
    class FriendsfavoritesController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
		def index
			# 20170426: retrieval of the friends favorites from the preferences for a given user
			if User.find_by(id: params[:user_id]).fb_connected=='Y'
				@a=ActiveRecord::Base.connection.execute("SELECT p.tmdbmovie_id, p.user_id, u.email, u.first_name, u.name, u.picture_url, t.genres, t.overview, t.poster_path, t.production_countries, t.runtime, t.spoken_languages, t.title, t.vote_average, t.vote_count, t.release_year, t.actors, t.director, t.trailer_url, t.popularity, t.adult, t.title_fr, t.overview_fr, t.trailer_url_fr, t.friends_likes FROM preferences p INNER JOIN friendships f ON p.user_id=f.friend_id AND f.user_id=#{params[:user_id]} LEFT OUTER JOIN users u ON p.user_id=u.id LEFT OUTER JOIN tmdbmovies t ON t.id=p.tmdbmovie_id WHERE p.favorite='Y'")
			else
				@a=false
			end
			
			# 20170611: forced the json rendering
			render json: @a
		end
	
    end
end
