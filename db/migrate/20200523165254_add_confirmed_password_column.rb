class AddConfirmedPasswordColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_confirmed, :boolean
  end
end
