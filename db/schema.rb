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

ActiveRecord::Schema.define(version: 20130626030957) do

  create_table "agencies", force: true do |t|
    t.string   "agency_id"
    t.string   "agency_name"
    t.string   "agency_url"
    t.string   "agency_timezone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calendars", force: true do |t|
    t.string   "service_id"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wednesday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.boolean  "sunday"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "route_id"
    t.integer  "agency_id"
    t.string   "route_short_name"
    t.string   "route_long_name"
    t.integer  "route_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routes", ["agency_id"], name: "index_routes_on_agency_id", using: :btree

  create_table "stop_times", force: true do |t|
    t.integer  "trip_id"
    t.string   "trip_str"
    t.time     "arrival_time"
    t.time     "departure_time"
    t.integer  "stop_id"
    t.string   "stop_str"
    t.integer  "stop_sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stop_times", ["stop_id"], name: "index_stop_times_on_stop_id", using: :btree
  add_index "stop_times", ["trip_id"], name: "index_stop_times_on_trip_id", using: :btree

  create_table "stops", force: true do |t|
    t.string   "stop_id"
    t.string   "stop_code"
    t.string   "stop_name"
    t.float    "stop_lat"
    t.float    "stop_lon"
    t.string   "stop_url"
    t.integer  "stop_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "route_id"
    t.integer  "calendar_id"
    t.string   "route_str"
    t.string   "service_id"
    t.string   "trip_id"
    t.string   "trip_headsign"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["calendar_id"], name: "index_trips_on_calendar_id", using: :btree
  add_index "trips", ["route_id"], name: "index_trips_on_route_id", using: :btree

end
