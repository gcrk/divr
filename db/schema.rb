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

ActiveRecord::Schema.define(version: 2020_10_18_074700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centers", force: :cascade do |t|
    t.text "name"
    t.text "country"
    t.text "city"
    t.text "photo"
    t.text "website"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scubas", force: :cascade do |t|
    t.text "title"
    t.date "date"
    t.text "location"
    t.integer "duration"
    t.integer "depth"
    t.text "gps"
    t.text "buddy"
    t.text "notes"
    t.integer "center_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.boolean "pro"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.text "name"
    t.text "link"
    t.integer "user_id"
    t.integer "scuba_id"
    t.integer "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
