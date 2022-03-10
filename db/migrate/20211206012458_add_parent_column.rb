# frozen_string_literal: true

class AddParentColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :notes do |t|
      t.string :parent_column_id
    end
  end
end
