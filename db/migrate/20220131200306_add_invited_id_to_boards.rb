class AddInvitedIdToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :invited_id, :string
    add_index :boards, :invited_id, unique: true
  end
end
