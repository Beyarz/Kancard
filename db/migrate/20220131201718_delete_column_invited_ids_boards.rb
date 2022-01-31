class DeleteColumnInvitedIdsBoards < ActiveRecord::Migration[6.1]
  def change
    remove_column :boards, :invited_ids
  end
end
