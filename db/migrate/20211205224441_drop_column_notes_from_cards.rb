# frozen_string_literal: true

class DropColumnNotesFromCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :notes
  end
end
