# frozen_string_literal: true

class AddNotesToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :notes, :string
  end
end
