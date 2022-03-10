# frozen_string_literal: true

class AddColumnOwnerIdToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :owner_id, :string
  end
end
