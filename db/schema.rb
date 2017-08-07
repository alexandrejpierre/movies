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

ActiveRecord::Schema.define(version: 20170807143903) do

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

  create_table "recommendations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tmdbmovie_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.text     "overview_fr"
    t.string   "title_fr"
    t.text     "videos_fr"
    t.string   "trailer_site_fr"
    t.string   "trailer_url_fr"
    t.integer  "friends_likes"
    t.integer  "is_adventure"
    t.integer  "is_family"
    t.integer  "is_fantasy"
    t.integer  "is_mystery"
    t.integer  "is_history"
    t.integer  "is_action"
    t.integer  "is_crime"
    t.integer  "is_comedy"
    t.integer  "is_thriller"
    t.integer  "is_drama"
    t.integer  "is_foreign"
    t.integer  "is_animation"
    t.integer  "is_western"
    t.integer  "is_music"
    t.integer  "is_war"
    t.integer  "is_science_fiction"
    t.integer  "is_horror"
    t.integer  "is_romance"
    t.integer  "is_tv_movie"
    t.integer  "is_documentary"
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
