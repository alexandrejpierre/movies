require 'test_helper'

class TmdbmoviesControllerTest < ActionController::TestCase
  setup do
    @tmdbmovie = tmdbmovies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tmdbmovies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tmdbmovie" do
    assert_difference('Tmdbmovie.count') do
      post :create, tmdbmovie: { adult: @tmdbmovie.adult, backdrop_path: @tmdbmovie.backdrop_path, belongs_to_collection: @tmdbmovie.belongs_to_collection, budget: @tmdbmovie.budget, genres: @tmdbmovie.genres, homepage: @tmdbmovie.homepage, imdb_id: @tmdbmovie.imdb_id, original_language: @tmdbmovie.original_language, original_title: @tmdbmovie.original_title, overview: @tmdbmovie.overview, popularity: @tmdbmovie.popularity, poster_path: @tmdbmovie.poster_path, production_companies: @tmdbmovie.production_companies, production_countries: @tmdbmovie.production_countries, release_date: @tmdbmovie.release_date, revenue: @tmdbmovie.revenue, runtime: @tmdbmovie.runtime, spoken_languages: @tmdbmovie.spoken_languages, status: @tmdbmovie.status, tagline: @tmdbmovie.tagline, title: @tmdbmovie.title, tmdb_id: @tmdbmovie.tmdb_id, video: @tmdbmovie.video, vote_average: @tmdbmovie.vote_average, vote_count: @tmdbmovie.vote_count }
    end

    assert_redirected_to tmdbmovie_path(assigns(:tmdbmovie))
  end

  test "should show tmdbmovie" do
    get :show, id: @tmdbmovie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tmdbmovie
    assert_response :success
  end

  test "should update tmdbmovie" do
    patch :update, id: @tmdbmovie, tmdbmovie: { adult: @tmdbmovie.adult, backdrop_path: @tmdbmovie.backdrop_path, belongs_to_collection: @tmdbmovie.belongs_to_collection, budget: @tmdbmovie.budget, genres: @tmdbmovie.genres, homepage: @tmdbmovie.homepage, imdb_id: @tmdbmovie.imdb_id, original_language: @tmdbmovie.original_language, original_title: @tmdbmovie.original_title, overview: @tmdbmovie.overview, popularity: @tmdbmovie.popularity, poster_path: @tmdbmovie.poster_path, production_companies: @tmdbmovie.production_companies, production_countries: @tmdbmovie.production_countries, release_date: @tmdbmovie.release_date, revenue: @tmdbmovie.revenue, runtime: @tmdbmovie.runtime, spoken_languages: @tmdbmovie.spoken_languages, status: @tmdbmovie.status, tagline: @tmdbmovie.tagline, title: @tmdbmovie.title, tmdb_id: @tmdbmovie.tmdb_id, video: @tmdbmovie.video, vote_average: @tmdbmovie.vote_average, vote_count: @tmdbmovie.vote_count }
    assert_redirected_to tmdbmovie_path(assigns(:tmdbmovie))
  end

  test "should destroy tmdbmovie" do
    assert_difference('Tmdbmovie.count', -1) do
      delete :destroy, id: @tmdbmovie
    end

    assert_redirected_to tmdbmovies_path
  end
end
