class AddTrailerToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :trailer_site, :string
    add_column :tmdbmovies, :trailer_url, :string
  end
end
