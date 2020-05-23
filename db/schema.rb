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

ActiveRecord::Schema.define(version: 2020_05_23_202435) do

  create_table "boards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "title", limit: 25
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_cards_on_title"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 25
    t.string "auth_token"
    t.string "board", limit: 25
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "password_confirmed", default: false
    t.boolean "email_confirmed", default: false
    t.string "password"
    t.string "email"
    t.string "login"
    t.string "password_salt"
    t.integer "login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.integer "failed_login_count", default: 0, null: false
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string "current_login_ip"
    t.string "last_login_ip"
    t.boolean "approved", default: false
    t.boolean "confirmed", default: false
    t.boolean "active", default: false
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
