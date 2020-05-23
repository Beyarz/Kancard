class IntegratingAuthlogic < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :auth_token, :string
    change_column :users, :email, :string
    change_column :users, :email_confirmed, :boolean, default: false
    change_column :users, :password, :string
    change_column :users, :password_confirmed, :boolean, default: false
  end
  add_column :users, :login, :string
  add_column :users, :password_salt, :string

  add_column :users, :login_count, :integer, default: 0, null: false
  add_column :users, :last_request_at, :datetime

  add_column :users, :failed_login_count, :integer, default: 0, null: false
  add_column :users, :current_login_at, :datetime
  add_column :users, :last_login_at, :datetime

  add_column :users, :current_login_ip, :string
  add_column :users, :last_login_ip, :string

  add_column :users, :approved, :boolean, default: false
  add_column :users, :confirmed, :boolean, default: false
  add_column :users, :active, :boolean, default: false
end
