# frozen_string_literal: true

class DropBoardCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :board
  end
end
