# frozen_string_literal: true

class AddDefaultConfirmedValue < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :email_confirmed, :boolean, default: false
    change_column :users, :password_confirmed, :boolean, default: false
  end
end
