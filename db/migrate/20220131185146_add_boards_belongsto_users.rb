class AddBoardsBelongstoUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :users, index: true
  end
end
