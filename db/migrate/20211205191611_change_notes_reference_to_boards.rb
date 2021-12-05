class ChangeNotesReferenceToBoards < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :card
    remove_column :notes, :card_id

    change_table :notes do |t|
      t.string :board
      t.references :board
    end
  end
end
