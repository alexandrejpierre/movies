json.extract! recommendation, :id, :user_id, :tmdbmovie_id, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)