class AddFeaturesToTmdbmovie < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :is_adventure, :integer
    add_column :tmdbmovies, :is_family, :integer
    add_column :tmdbmovies, :is_fantasy, :integer
    add_column :tmdbmovies, :is_mystery, :integer
    add_column :tmdbmovies, :is_history, :integer
    add_column :tmdbmovies, :is_action, :integer
    add_column :tmdbmovies, :is_crime, :integer
    add_column :tmdbmovies, :is_comedy, :integer
    add_column :tmdbmovies, :is_thriller, :integer
    add_column :tmdbmovies, :is_drama, :integer
    add_column :tmdbmovies, :is_foreign, :integer
    add_column :tmdbmovies, :is_animation, :integer
    add_column :tmdbmovies, :is_western, :integer
    add_column :tmdbmovies, :is_music, :integer
    add_column :tmdbmovies, :is_war, :integer
    add_column :tmdbmovies, :is_science_fiction, :integer
    add_column :tmdbmovies, :is_horror, :integer
    add_column :tmdbmovies, :is_romance, :integer
    add_column :tmdbmovies, :is_tv_movie, :integer
    add_column :tmdbmovies, :is_documentary, :integer
  end
end
