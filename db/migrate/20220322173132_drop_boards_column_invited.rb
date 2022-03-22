# frozen_string_literal: true

class DropBoardsColumnInvited < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :invited
  end
end
