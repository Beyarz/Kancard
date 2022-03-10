# frozen_string_literal: true

class CreateUserSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sessions, &:timestamps
  end
end
