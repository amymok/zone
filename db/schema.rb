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

ActiveRecord::Schema.define(version: 20140502223732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "conservation_districts", force: true do |t|
    t.string   "name"
    t.string   "ordinance"
    t.string   "ordinance_date"
    t.float    "shape_leng"
    t.float    "shape_area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "geom",           limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "cosa_council_districts", force: true do |t|
    t.integer  "district"
    t.string   "name"
    t.float    "sqmiles"
    t.float    "shape_area"
    t.float    "shape_leng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "geom",       limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "historic_districts", force: true do |t|
    t.string   "name"
    t.float    "acres"
    t.float    "shape_leng"
    t.float    "shape_area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "geom",       limit: {:srid=>0, :type=>"geometry"}
  end

end
