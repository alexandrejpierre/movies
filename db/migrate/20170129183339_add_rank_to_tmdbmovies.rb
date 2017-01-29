class AddRankToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :rank, :integer
  end
end
