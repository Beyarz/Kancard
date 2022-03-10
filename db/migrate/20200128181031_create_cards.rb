# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title, limit: 25

      t.timestamps
    end
    add_index :cards, :title
  end
end
