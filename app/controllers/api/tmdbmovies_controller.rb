module Api
	class TmdbmoviesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def random_mode
			# 20170529: usage of relevant_movies
			ids=@movies.relevant_movies.pluck(:id)
			level=rand(ids.length-51)
			selected_ids=ids[level..level+50]
			@movies=@movies.where("tmdbmovies.id in (?)",selected_ids)
		end
		
		def normal_mode
			# Filtering based on sent parameters
			# 20170307: changed movie to tmdbmovie
			params.each do |key,val|
				if key != 'controller' and key != 'action' and key != 'tmdbmovie' and key !='user_id' and key !='movie' and key != 'random' and key != 'has_filters'
					if key=='release_year'
						@movies=@movies.where(release_year: val.slice(0,4)..val.slice(4,9))
			# 20170122: Added the elsif clause to fix the filtering on Genre and Country
			# 20170205: added spoken_languages and production_countries to the filter
					elsif (key=='genres' or key=='spoken_languages' or key=='production_countries')
						@movies=@movies.where("\"#{key}\" LIKE ?","%#{val}%")
					else
						@movies=@movies.where(key => val)
					end
				end
			end
			@movies=@movies.order(popularity: :desc)
		end
		
		def recommendation_mode
			# Determines the latest recommendations
			max=Recommendation.where("user_id = ?",params[:user_id]).maximum(:created_at)
			# 20170523: handling of the case where max is nil, when a user has no recommendations available
			if max.nil?
				normal_mode
			else
				recommendations=Recommendation.where("user_id = ?",params[:user_id]).where(created_at: max.midnight..Time.now).pluck(:tmdbmovie_id)
			end
			# Selection of recommendations among the tmdbmovies 
			if @movies.where("tmdbmovies.id in (?)", recommendations).empty?
				normal_mode
			else
				@movies=@movies.where("tmdbmovies.id in (?)", recommendations)
			end
		end
		
		def index
			# Initialisation from the tmdb table
			# 20170203: retrieval of the user_id based on their email
			# params[:user_id]=User.where("email = ?",params[:email]).first.id
			# 20170131: Removal of adult movies
			# 20170203: Removal of the films that the users has already seen
			# 20170306: Added the relevant_columns scope
			# 20170317: Rollbacked the relevant_columns
			# 20170401: Updated the relevant columns
			@movies=Tmdbmovie.relevant_columns.joins("LEFT OUTER JOIN preferences ON preferences.tmdbmovie_id = tmdbmovies.id AND preferences.user_id=#{params[:user_id]}").where("preferences.created_at is ?",nil).where(adult: false)
			# 20170428: Added the if to create the random case
			if params[:random]=='Y'
				random_mode
			# 20170520: created the recommendations mode
			elsif params[:has_filters]=='N' and Preference.where(user_id: params[:user_id]).count > 100
				recommendation_mode
			else
				normal_mode
			end
			
			# 20170403: if the user is connected with Fb, calculation of the numbre of friends likes for each movie returned
			# 20170428: calculation for each movie through an SQL query
			#if User.find_by(id: params[:user_id]).fb_connected == 'Y'
				#@movies.each do |m|
					#x=ActiveRecord::Base.connection.execute("SELECT count(*) AS nb FROM preferences p INNER JOIN friendships f ON f.user_id=#{params[:user_id]} AND f.friend_id = p.user_id WHERE p.tmdbmovie_id=#{m.id} AND p.likes='Y'")
					#m.assign_attributes(friends_likes: x[0]["nb"])
				#end
			#end
			
			# Added a count of the number of movies
			# 20170122: changed the number of movies returned from 100 to 500
			# 20170122: identification of the returned movies thanks to the random sampling
			# 20170131: sorted by popularity and limit to 100
			# 20170306: modified the count to take into account the columns scope
			# 20170401: changed the output to 50 movies
			# 20170428: moved the movies ordering and filtering in the else clause above
			# 20170530: changed the output to 100 movies
			render json: { count: @movies.count(:all), data: @movies.first(100) }
		end
	end
end
