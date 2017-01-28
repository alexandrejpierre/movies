require 'test_helper'

class TmdBsControllerTest < ActionController::TestCase
  setup do
    @tmdb = tmdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tmdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tmdb" do
    assert_difference('Tmdb.count') do
      post :create, tmdb: { adult: @tmdb.adult, backdrop_path: @tmdb.backdrop_path, belongs_to_collection: @tmdb.belongs_to_collection, budget: @tmdb.budget, collection_backdrop_path: @tmdb.collection_backdrop_path, collection_id: @tmdb.collection_id, collection_name: @tmdb.collection_name, collection_poster_path: @tmdb.collection_poster_path, genres_id: @tmdb.genres_id, genres_name: @tmdb.genres_name, homepage: @tmdb.homepage, imdb_id: @tmdb.imdb_id, original_language: @tmdb.original_language, original_title: @tmdb.original_title, overview: @tmdb.overview, popularity: @tmdb.popularity, poster_path: @tmdb.poster_path, production_companies_id: @tmdb.production_companies_id, production_companies_name: @tmdb.production_companies_name, production_countries_iso_3166_1: @tmdb.production_countries_iso_3166_1, production_countries_name: @tmdb.production_countries_name, release_date: @tmdb.release_date, revenue: @tmdb.revenue, runtime: @tmdb.runtime, spoken_languages_id: @tmdb.spoken_languages_id, spoken_languages_iso_639_1: @tmdb.spoken_languages_iso_639_1, status: @tmdb.status, tagline: @tmdb.tagline, title: @tmdb.title, tmdb_id: @tmdb.tmdb_id, video: @tmdb.video, vote_average: @tmdb.vote_average, vote_count: @tmdb.vote_count }
    end

    assert_redirected_to tmdb_path(assigns(:tmdb))
  end

  test "should show tmdb" do
    get :show, id: @tmdb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tmdb
    assert_response :success
  end

  test "should update tmdb" do
    patch :update, id: @tmdb, tmdb: { adult: @tmdb.adult, backdrop_path: @tmdb.backdrop_path, belongs_to_collection: @tmdb.belongs_to_collection, budget: @tmdb.budget, collection_backdrop_path: @tmdb.collection_backdrop_path, collection_id: @tmdb.collection_id, collection_name: @tmdb.collection_name, collection_poster_path: @tmdb.collection_poster_path, genres_id: @tmdb.genres_id, genres_name: @tmdb.genres_name, homepage: @tmdb.homepage, imdb_id: @tmdb.imdb_id, original_language: @tmdb.original_language, original_title: @tmdb.original_title, overview: @tmdb.overview, popularity: @tmdb.popularity, poster_path: @tmdb.poster_path, production_companies_id: @tmdb.production_companies_id, production_companies_name: @tmdb.production_companies_name, production_countries_iso_3166_1: @tmdb.production_countries_iso_3166_1, production_countries_name: @tmdb.production_countries_name, release_date: @tmdb.release_date, revenue: @tmdb.revenue, runtime: @tmdb.runtime, spoken_languages_id: @tmdb.spoken_languages_id, spoken_languages_iso_639_1: @tmdb.spoken_languages_iso_639_1, status: @tmdb.status, tagline: @tmdb.tagline, title: @tmdb.title, tmdb_id: @tmdb.tmdb_id, video: @tmdb.video, vote_average: @tmdb.vote_average, vote_count: @tmdb.vote_count }
    assert_redirected_to tmdb_path(assigns(:tmdb))
  end

  test "should destroy tmdb" do
    assert_difference('Tmdb.count', -1) do
      delete :destroy, id: @tmdb
    end

    assert_redirected_to tmdbs_path
  end
end
