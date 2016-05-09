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

ActiveRecord::Schema.define(version: 20160405163156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinema_timetables", force: :cascade do |t|
    t.integer  "cinema_id",  null: false
    t.integer  "movie_id",   null: false
    t.string   "hall",       null: false
    t.datetime "start",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cinema_timetables", ["cinema_id", "hall", "start"], name: "index_cinema_timetables_on_cinema_id_and_hall_and_start", unique: true, using: :btree
  add_index "cinema_timetables", ["cinema_id"], name: "index_cinema_timetables_on_cinema_id", using: :btree
  add_index "cinema_timetables", ["movie_id"], name: "index_cinema_timetables_on_movie_id", using: :btree

  create_table "cinemas", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cinemas", ["name"], name: "index_cinemas_on_name", unique: true, using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "countries", ["name"], name: "index_countries_on_name", unique: true, using: :btree

  create_table "countries_movies", id: false, force: :cascade do |t|
    t.integer "movie_id",   null: false
    t.integer "country_id", null: false
  end

  add_index "countries_movies", ["movie_id", "country_id"], name: "index_countries_movies_on_movie_id_and_country_id", unique: true, using: :btree

  create_table "movie_companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movie_companies", ["name"], name: "index_movie_companies_on_name", unique: true, using: :btree

  create_table "movie_people", force: :cascade do |t|
    t.string   "role",       null: false
    t.integer  "movie_id",   null: false
    t.integer  "person_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movie_people", ["movie_id", "person_id"], name: "index_movie_people_on_movie_id_and_person_id", unique: true, using: :btree
  add_index "movie_people", ["movie_id"], name: "index_movie_people_on_movie_id", using: :btree
  add_index "movie_people", ["person_id"], name: "index_movie_people_on_person_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name",                         null: false
    t.integer  "min_age",          default: 0, null: false
    t.integer  "genre",                        null: false
    t.integer  "duration",                     null: false
    t.integer  "movie_company_id",             null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "movies", ["movie_company_id"], name: "index_movies_on_movie_company_id", using: :btree
  add_index "movies", ["name", "movie_company_id"], name: "index_movies_on_name_and_movie_company_id", unique: true, using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "last_name",   null: false
    t.string   "first_name",  null: false
    t.string   "second_name"
    t.date     "birthday",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "cost",                null: false
    t.integer  "cinema_timetable_id", null: false
    t.integer  "zone_id",             null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "prices", ["cinema_timetable_id", "zone_id"], name: "index_prices_on_cinema_timetable_id_and_zone_id", unique: true, using: :btree
  add_index "prices", ["cinema_timetable_id"], name: "index_prices_on_cinema_timetable_id", using: :btree
  add_index "prices", ["zone_id"], name: "index_prices_on_zone_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "zones", ["name"], name: "index_zones_on_name", unique: true, using: :btree

  add_foreign_key "cinema_timetables", "cinemas"
  add_foreign_key "cinema_timetables", "movies"
  add_foreign_key "movie_people", "movies"
  add_foreign_key "movie_people", "people"
  add_foreign_key "movies", "movie_companies"
  add_foreign_key "prices", "cinema_timetables"
  add_foreign_key "prices", "zones"
end
