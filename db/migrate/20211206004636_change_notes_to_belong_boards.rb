# frozen_string_literal: true

class ChangeNotesToBelongBoards < ActiveRecord::Migration[6.1]
  def change
    rename_column :notes, :card_id, :board_id
  end
end
