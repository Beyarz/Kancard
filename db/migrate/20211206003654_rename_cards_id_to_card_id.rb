# frozen_string_literal: true

class RenameCardsIdToCardId < ActiveRecord::Migration[6.1]
  def change
    rename_column :notes, :cards_id, :card_id
  end
end
