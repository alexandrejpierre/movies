class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :season
      t.string :episode
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.text :actors
      t.text :plot
      t.string :language
      t.string :awards
      t.text :poster
      t.string :metascore
      t.string :imdbvotes
      t.string :imdbid
      t.string :seriesid
      t.string :type
      t.string :tomatometer
      t.string :tomatoimage
      t.string :tomatorating
      t.string :tomatoreviews
      t.string :tomatofresh
      t.string :tomatorotten
      t.text :tomatoconsensus
      t.string :tomatousermeter
      t.string :tomatouserrating
      t.string :tomatouserreviews
      t.text :tomatourl
      t.string :dvd
      t.string :boxoffice
      t.string :production
      t.string :website
      t.string :response

      t.timestamps null: false
    end
  end
end
