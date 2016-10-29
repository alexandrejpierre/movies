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

ActiveRecord::Schema.define(version: 20161029095907) do

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
  end

  create_table "users", force: :cascade do |t|
    t.string   "pseudo"
    t.string   "name"
    t.string   "first_name"
    t.string   "email"
    t.string   "fb_connected"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
