require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post :create, movie: { actors: @movie.actors, awards: @movie.awards, boxoffice: @movie.boxoffice, director: @movie.director, dvd: @movie.dvd, episode: @movie.episode, genre: @movie.genre, imdbid: @movie.imdbid, imdbvotes: @movie.imdbvotes, language: @movie.language, metascore: @movie.metascore, plot: @movie.plot, poster: @movie.poster, production: @movie.production, rated: @movie.rated, released: @movie.released, response: @movie.response, runtime: @movie.runtime, season: @movie.season, seriesid: @movie.seriesid, title: @movie.title, tomatoconsensus: @movie.tomatoconsensus, tomatofresh: @movie.tomatofresh, tomatoimage: @movie.tomatoimage, tomatometer: @movie.tomatometer, tomatorating: @movie.tomatorating, tomatoreviews: @movie.tomatoreviews, tomatorotten: @movie.tomatorotten, tomatourl: @movie.tomatourl, tomatousermeter: @movie.tomatousermeter, tomatouserrating: @movie.tomatouserrating, tomatouserreviews: @movie.tomatouserreviews, type: @movie.type, website: @movie.website, writer: @movie.writer, year: @movie.year }
    end

    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should show movie" do
    get :show, id: @movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie
    assert_response :success
  end

  test "should update movie" do
    patch :update, id: @movie, movie: { actors: @movie.actors, awards: @movie.awards, boxoffice: @movie.boxoffice, director: @movie.director, dvd: @movie.dvd, episode: @movie.episode, genre: @movie.genre, imdbid: @movie.imdbid, imdbvotes: @movie.imdbvotes, language: @movie.language, metascore: @movie.metascore, plot: @movie.plot, poster: @movie.poster, production: @movie.production, rated: @movie.rated, released: @movie.released, response: @movie.response, runtime: @movie.runtime, season: @movie.season, seriesid: @movie.seriesid, title: @movie.title, tomatoconsensus: @movie.tomatoconsensus, tomatofresh: @movie.tomatofresh, tomatoimage: @movie.tomatoimage, tomatometer: @movie.tomatometer, tomatorating: @movie.tomatorating, tomatoreviews: @movie.tomatoreviews, tomatorotten: @movie.tomatorotten, tomatourl: @movie.tomatourl, tomatousermeter: @movie.tomatousermeter, tomatouserrating: @movie.tomatouserrating, tomatouserreviews: @movie.tomatouserreviews, type: @movie.type, website: @movie.website, writer: @movie.writer, year: @movie.year }
    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete :destroy, id: @movie
    end

    assert_redirected_to movies_path
  end
end
