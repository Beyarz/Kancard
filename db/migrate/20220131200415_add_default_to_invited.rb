# frozen_string_literal: true

class AddDefaultToInvited < ActiveRecord::Migration[6.1]
  def change
    change_column :boards, :invited_id, :string, default: ""
  end
end
