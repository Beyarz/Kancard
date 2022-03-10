# frozen_string_literal: true

class DropDeliveredColumnMessages < ActiveRecord::Migration[6.1]
  def change
    remove_column :messages, :delivered
  end
end
