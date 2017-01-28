class RemoveColumnsFromTmdb < ActiveRecord::Migration
  def change
	remove_column :tmdbs, :collection_id
	remove_column :tmdbs, :collection_name
	remove_column :tmdbs, :collection_poster_path
	remove_column :tmdbs, :collection_backdrop_path
	remove_column :tmdbs, :genres_id
	remove_column :tmdbs, :production_companies_name
    remove_column :tmdbs, :production_companies_id
    remove_column :tmdbs, :production_countries_iso_3166_1
    remove_column :tmdbs, :production_countries_name
    remove_column :tmdbs, :spoken_languages_iso_639_1
    remove_column :tmdbs, :spoken_languages_id
  end
end
