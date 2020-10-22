ActiveRecord::Schema.define(version: 2020_10_18_074700) do

  enable_extension "plpgsql"

  create_table "centers", force: :cascade do |t|
    t.text "name"
    t.text "country"
    t.text "city"
    t.text "gps"
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
