class AddReleaseYearToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :release_year, :integer
  end
end
