class AddFrenchinfoToTmdbmovies < ActiveRecord::Migration
  def change
    add_column :tmdbmovies, :overview_fr, :text
    add_column :tmdbmovies, :title_fr, :string
    add_column :tmdbmovies, :videos_fr, :text
    add_column :tmdbmovies, :trailer_site_fr, :string
    add_column :tmdbmovies, :trailer_url_fr, :string
  end
end
