json.extract! tmdb, :id, :adult, :backdrop_path, :belongs_to_collection, :collection_id, :collection_name, :collection_poster_path, :collection_backdrop_path, :budget, :genres_id, :genres_name, :homepage, :tmdb_id, :imdb_id, :original_language, :original_title, :overview, :popularity, :poster_path, :production_companies_name, :production_companies_id, :production_countries_iso_3166_1, :production_countries_name, :release_date, :revenue, :runtime, :spoken_languages_iso_639_1, :spoken_languages_id, :status, :tagline, :title, :video, :vote_average, :vote_count, :created_at, :updated_at
json.url tmdb_url(tmdb, format: :json)