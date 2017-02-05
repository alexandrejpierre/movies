class AddDirectorToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :director, :string
  end
end
