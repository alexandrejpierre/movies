class AddVideosToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :videos, :string
  end
end
