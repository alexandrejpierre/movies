class AddCastAndCrewToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :cast, :string
    add_column :tmdbmovies, :crew, :string
  end
end
