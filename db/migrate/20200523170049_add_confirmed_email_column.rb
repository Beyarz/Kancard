class AddConfirmedEmailColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email_confirmed, :boolean
  end
end
