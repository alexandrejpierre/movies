class Tmdbmovie < ActiveRecord::Base
	# 20170131: added the lines
	has_many :preferences, dependent: :destroy 
	has_many :users, through: :preferences
	# 20170426: added the relationship to the recommendations table
	has_many :recommendations, dependent: :destroy
	
	# 20170306: added a scope to select only the relevant columns
	# 20170307: added the id to the list of relevant columns
	# 20170317: rollback
	# 20170401: fixed the relevant_columns and added the fr columns
	scope :relevant_columns, -> { select("tmdbmovies.id, genres, overview, poster_path, production_countries, runtime, spoken_languages, title, vote_average, vote_count, release_year, actors, director, trailer_url, popularity, adult, title_fr, overview_fr, trailer_url_fr, friends_likes")}
	# 20170529: new scope to filter out weird movies
	def self.relevant_movies
		where.not(overview: nil).where.not(vote_average: 0.0).where.not(poster_path: nil).where.not(production_countries: nil).where.not(actors: nil)
	end
end
