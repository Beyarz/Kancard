# frozen_string_literal: true

class AddReferencesColumnToNotesTable < ActiveRecord::Migration[6.1]
  def change
    change_table :notes do |t|
      t.references :cards, null: false, foreign_key: true
    end
  end
end
