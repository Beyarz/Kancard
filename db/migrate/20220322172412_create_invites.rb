# frozen_string_literal: true

class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.integer :user_id
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
