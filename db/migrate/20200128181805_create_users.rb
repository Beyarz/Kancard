class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, limit: 25
      t.string :auth_token
      t.string :board, limit: 25

      t.timestamps
    end
    add_index :users, :auth_token, unique: true
    add_index :users, :username, unique: true
  end
end
