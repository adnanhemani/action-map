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

ActiveRecord::Schema.define(version: 20171121182849) do

  create_table "counties", force: :cascade do |t|
    t.string   "name",                                        null: false
    t.integer  "states_id"
    t.string   "activity",             default: "neutral"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "immigration_activity", default: "i_neutral"
    t.string   "gun_control_activity", default: "gc_neutral"
    t.string   "environment_activity", default: "e_neutral"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.string   "county"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.string   "sex"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "email"
    t.string   "phone_number"
    t.string   "description"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",                                        null: false
    t.string   "activity",             default: "neutral"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "symbol"
    t.string   "immigration_activity", default: "i_neutral"
    t.string   "gun_control_activity", default: "gc_neutral"
    t.string   "environment_activity", default: "e_neutral"
  end

  create_table "users", force: :cascade do |t|
    t.string   "interests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "uid"
    t.string   "name"
    t.string   "provider"
  end

end
