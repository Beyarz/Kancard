class MergeNotesWithCards < ActiveRecord::Migration[6.1]
  def change
    drop_table :notes

    change_table :cards do |t|
      t.index :content
      t.string :content
    end
  end
end
