# frozen_string_literal: true

class AddReferencesToNotes < ActiveRecord::Migration[6.1]
  def change
    change_table :notes do |t|
      t.string :card
      t.references :card
    end
  end
end
