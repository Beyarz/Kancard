class ChangeInvitedIdToArray < ActiveRecord::Migration[6.1]
  def change
    change_column :boards, :invited_id, :string, array: true
    rename_column :boards, :invited_id, :invited_ids
  end
end
