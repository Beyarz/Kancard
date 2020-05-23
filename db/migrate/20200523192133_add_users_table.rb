class AddUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table "users", force: :cascade do |t|
      t.string "username", limit: 25
      t.string "auth_token"
      t.string "board", limit: 25
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.boolean "password_confirmed", default: false
      t.boolean "email_confirmed", default: false
      t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
      t.index ["username"], name: "index_users_on_username", unique: true
    end

    add_column :users, :password, :string
    add_column :users, :email, :string
  end
end
