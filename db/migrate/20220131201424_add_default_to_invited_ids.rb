# frozen_string_literal: true

class AddDefaultToInvitedIds < ActiveRecord::Migration[6.1]
  def change
    change_column :boards, :invited_ids, :string, array: true
  end
end
