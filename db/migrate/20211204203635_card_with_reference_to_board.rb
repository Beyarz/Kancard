# frozen_string_literal: true

class CardWithReferenceToBoard < ActiveRecord::Migration[6.1]
  def change
    change_table :cards do |t|
      t.string :board
      t.references :board
    end
  end
end
