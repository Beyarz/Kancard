# frozen_string_literal: true

class ChangeUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :username, :string, uniqe: true
  end
end
