# frozen_string_literal: true

class DropCardIdFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :card
    remove_column :notes, :card_id
  end
end
