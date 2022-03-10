# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
