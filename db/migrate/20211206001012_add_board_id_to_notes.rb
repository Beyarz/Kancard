class AddBoardIdToNotes < ActiveRecord::Migration[6.1]
  def change
    change_table :notes do |t|
      t.references :boards, null: false, foreign_key: true
    end
  end
end
