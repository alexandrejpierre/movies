class CreateTmdbmovies < ActiveRecord::Migration
  def change
    create_table :tmdbmovies do |t|
      t.boolean :adult
      t.string :backdrop_path
      t.string :belongs_to_collection
      t.float :budget
      t.string :genres
      t.string :homepage
      t.string :tmdb_id
      t.string :imdb_id
      t.string :original_language
      t.string :original_title
      t.text :overview
      t.float :popularity
      t.string :poster_path
      t.string :production_companies
      t.string :production_countries
      t.date :release_date
      t.float :revenue
      t.integer :runtime
      t.string :spoken_languages
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
