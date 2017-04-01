class AddFriendslikesToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :friends_likes, :integer
  end
end
