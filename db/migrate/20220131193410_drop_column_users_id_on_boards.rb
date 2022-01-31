class DropColumnUsersIdOnBoards < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :users_id
  end
end
