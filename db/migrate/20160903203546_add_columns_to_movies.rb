class AddColumnsToMovies < ActiveRecord::Migration
  def change
	add_column :movies, :Country, :string
	add_column :movies, :imdbRating, :string
  end
end
