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

ActiveRecord::Schema.define(version: 20131023235211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disney_character_senators", force: true do |t|
    t.integer "senator_id",          null: false
    t.integer "disney_character_id", null: false
  end

  create_table "disney_characters", force: true do |t|
    t.string "character_name", null: false
    t.text   "img_url",        null: false
    t.string "quote"
  end

  create_table "disney_characters_senators", force: true do |t|
    t.integer "senator_id",          null: false
    t.integer "disney_character_id", null: false
  end

  create_table "disney_senators", force: true do |t|
  end

  create_table "disneys", force: true do |t|
  end

  create_table "disneys_senators", force: true do |t|
    t.integer "senator_id", null: false
    t.integer "disney_id",  null: false
  end

  create_table "senators", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "state",      null: false
    t.string   "phone",      null: false
    t.string   "website",    null: false
    t.text     "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter_id"
  end

  create_table "senators_tables", force: true do |t|
  end

end
