# frozen_string_literal: true

class AddInvitedToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :invited, :string
  end
end
