class FixColumnsName2 < ActiveRecord::Migration
  def change
	rename_column :movies, :year, :Year
  rename_column :movies, :rated, :Rated
  rename_column :movies, :released, :Released
  rename_column :movies, :runtime, :Runtime
  rename_column :movies, :genre, :Genre
  rename_column :movies, :director, :Director
  rename_column :movies, :writer, :Writer
  rename_column :movies, :actors, :Actors
  rename_column :movies, :plot, :Plot
  rename_column :movies, :language, :Language
  rename_column :movies, :awards, :Awards
  rename_column :movies, :poster, :Poster
  rename_column :movies, :metascore, :Metascore
  rename_column :movies, :imdbvotes, :imdbVotes
  rename_column :movies, :imdbid, :imdbID
  rename_column :movies, :type, :Type
  rename_column :movies, :tomatometer, :tomatoMeter
  rename_column :movies, :tomatoimage, :tomatoImage
  rename_column :movies, :tomatorating, :tomatoRating
  rename_column :movies, :tomatoreviews, :tomatoReviews
  rename_column :movies, :tomatofresh, :tomatoFresh
  rename_column :movies, :tomatorotten, :tomatoRotten
  rename_column :movies, :tomatoconsensus, :tomatoConsensus
  rename_column :movies, :tomatousermeter, :tomatoUserMeter
  rename_column :movies, :tomatouserrating, :tomatoUserRating
  rename_column :movies, :tomatouserreviews, :tomatoUserReviews
  rename_column :movies, :tomatourl, :tomatoURL
  rename_column :movies, :dvd, :DVD
  rename_column :movies, :boxoffice, :BoxOffice
  rename_column :movies, :production, :Production
  rename_column :movies, :website, :Website
  rename_column :movies, :response, :Response
  end
end
