class CreateTmdbs < ActiveRecord::Migration
  def change
    create_table :tmdbs do |t|
      t.boolean :adult
      t.string :backdrop_path
      t.boolean :belongs_to_collection
      t.string :collection_id
      t.string :collection_name
      t.string :collection_poster_path
      t.string :collection_backdrop_path
      t.float :budget
      t.string :genres_id
      t.string :genres_name
      t.string :homepage
      t.string :tmdb_id
      t.string :imdb_id
      t.string :original_language
      t.string :original_title
      t.text :overview
      t.float :popularity
      t.string :poster_path
      t.string :production_companies_name
      t.string :production_companies_id
      t.string :production_countries_iso_3166_1
      t.string :production_countries_name
      t.date :release_date
      t.float :revenue
      t.integer :runtime
      t.string :spoken_languages_iso_639_1
      t.string :spoken_languages_id
      t.string :status
      t.string :tagline
      t.string :title
      t.boolean :video
      t.float :vote_average
      t.integer :vote_count

      t.timestamps null: false
    end
  end
end
