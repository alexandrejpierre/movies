module Api
    class FriendslikesController < ApplicationController
        before_action :authenticate_token!
        respond_to :json
		
		def index
			# 20170810: added a distinct to be safe
			# 20170912: added fb_id
			@a=User.find_by_sql("SELECT DISTINCT u.first_name, u.name, u.picture_url, u.fb_id FROM users u INNER JOIN friendships f ON u.id=f.friend_id AND f.user_id=#{params[:user_id]} INNER JOIN preferences p ON p.user_id=u.id AND p.tmdbmovie_id=#{params[:tmdbmovie_id]}  WHERE p.likes='Y' ")
			respond_with @a, location: nil
		end
	
    end
end
