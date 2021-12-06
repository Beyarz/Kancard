class DropBoardId < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :boards_id
  end
end
