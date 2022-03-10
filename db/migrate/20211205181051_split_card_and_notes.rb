# frozen_string_literal: true

class SplitCardAndNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :content
  end
end
