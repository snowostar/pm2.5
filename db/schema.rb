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

ActiveRecord::Schema.define(version: 20171130232757) do
  
  create_table "pmvalue", force: :cascade do |t|
      t.integer "number"
      t.integer "year"
      t.integer "month"
      t.integer "day"
      t.integer "hour"
      t.string "pm"
      t.string "dew_point"
      t.string "temperature"
      t.integer "pressure"
      t.integer "combined_wind_direction"
      t.double "cumulated_wind_speed"
      t.integer "cumulated_hours_of_snow"
      t.integer "cumulated_hours_of_rain"
      t.datetime "created_at",   null: false
      t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
