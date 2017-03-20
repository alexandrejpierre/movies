# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170320210949) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "api_token"
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "Title"
    t.string   "Year"
    t.string   "Rated"
    t.string   "Released"
    t.string   "Season"
    t.string   "Episode"
    t.string   "Runtime"
    t.string   "Genre"
    t.string   "Director"
    t.string   "Writer"
    t.text     "Actors"
    t.text     "Plot"
    t.string   "Language"
    t.string   "Awards"
    t.text     "Poster"
    t.string   "Metascore"
    t.string   "imdbVotes"
    t.string   "imdbID"
    t.string   "seriesID"
    t.string   "Type"
    t.string   "tomatoMeter"
    t.string   "tomatoImage"
    t.string   "tomatoRating"
    t.string   "tomatoReviews"
    t.string   "tomatoFresh"
    t.string   "tomatoRotten"
    t.text     "tomatoConsensus"
    t.string   "tomatoUserMeter"
    t.string   "tomatoUserRating"
    t.string   "tomatoUserReviews"
    t.text     "tomatoURL"
    t.string   "DVD"
    t.string   "BoxOffice"
    t.string   "Production"
    t.string   "Website"
    t.string   "Response"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "Country"
    t.string   "imdbRating"
    t.string   "totalSeasons"
    t.string   "freshest"
    t.string   "IsShort"
    t.string   "scope"
    t.integer  "rank"
  end

  create_table "preferences", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "user_id"
    t.string   "likes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "tmdbmovie_id"
    t.string   "favorite"
  end

  add_index "preferences", ["movie_id"], name: "index_preferences_on_movie_id"
  add_index "preferences", ["tmdbmovie_id"], name: "index_preferences_on_tmdbmovie_id"
  add_index "preferences", ["user_id"], name: "index_preferences_on_user_id"

  create_table "tmdbmovies", force: :cascade do |t|
    t.boolean  "adult"
    t.string   "backdrop_path"
    t.string   "belongs_to_collection"
    t.float    "budget"
    t.string   "genres"
    t.string   "homepage"
    t.string   "tmdb_id"
    t.string   "imdb_id"
    t.string   "original_language"
    t.string   "original_title"
    t.text     "overview"
    t.float    "popularity"
    t.string   "poster_path"
    t.string   "production_companies"
    t.string   "production_countries"
    t.date     "release_date"
    t.float    "revenue"
    t.integer  "runtime"
    t.string   "spoken_languages"
    t.string   "status"
    t.string   "tagline"
    t.string   "title"
    t.boolean  "video"
    t.float    "vote_average"
    t.integer  "vote_count"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "release_year"
    t.integer  "rank"
    t.string   "cast"
    t.string   "crew"
    t.string   "actors"
    t.string   "director"
    t.string   "videos"
    t.string   "trailer_site"
    t.string   "trailer_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "pseudo"
    t.string   "name"
    t.string   "first_name"
    t.string   "email"
    t.string   "fb_connected"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "gender"
    t.integer  "age_range"
    t.string   "locale"
    t.string   "picture_url"
    t.string   "fb_id"
  end

end
