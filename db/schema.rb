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

ActiveRecord::Schema.define(version: 2019_05_01_233332) do

  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.integer "coach_id"
    t.datetime "arrival_time"
    t.datetime "minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_appointments_on_coach_id"
    t.index ["location_id"], name: "index_appointments_on_location_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_coaches_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "available_time"
    t.integer "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "balance"
    t.integer "level"
    t.string "provider"
    t.string "uid"
    t.string "token"
    t.integer "expires_at"
    t.boolean "expires"
    t.string "refresh_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
