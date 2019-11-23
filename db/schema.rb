# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_23_010543) do

  create_table "event_nonprofits", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "nonprofit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_nonprofits_on_event_id"
    t.index ["nonprofit_id"], name: "index_event_nonprofits_on_nonprofit_id"
  end

  create_table "event_volunteers", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "volunteer_id", null: false
    t.integer "hours"
    t.integer "multiplier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_volunteers_on_event_id"
    t.index ["volunteer_id"], name: "index_event_volunteers_on_volunteer_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "date"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nonprofits", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "address"
    t.string "logo"
    t.string "description"
    t.string "mission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteer_nonprofits", force: :cascade do |t|
    t.integer "hours"
    t.string "type"
    t.integer "multiplier"
    t.integer "volunteer_id", null: false
    t.integer "nonprofit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nonprofit_id"], name: "index_volunteer_nonprofits_on_nonprofit_id"
    t.index ["volunteer_id"], name: "index_volunteer_nonprofits_on_volunteer_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "organization"
    t.string "image"
    t.string "biography"
    t.string "status"
    t.integer "level"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_nonprofits", "events"
  add_foreign_key "event_nonprofits", "nonprofits"
  add_foreign_key "event_volunteers", "events"
  add_foreign_key "event_volunteers", "volunteers"
  add_foreign_key "volunteer_nonprofits", "nonprofits"
  add_foreign_key "volunteer_nonprofits", "volunteers"
end
