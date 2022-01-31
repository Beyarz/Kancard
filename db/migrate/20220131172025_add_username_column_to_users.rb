class AddUsernameColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, null: :false
  end
end
