# frozen_string_literal: true

class DropBoardsId < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :board_id
  end
end
