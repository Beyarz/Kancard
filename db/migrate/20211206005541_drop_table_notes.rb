# frozen_string_literal: true

class DropTableNotes < ActiveRecord::Migration[6.1]
  def change
    drop_table :notes
  end
end
