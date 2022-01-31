class AddOwnerToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :owner, :string
  end
end
