class AddActorsToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :actors, :string
  end
end
