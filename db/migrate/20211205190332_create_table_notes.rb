class CreateTableNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.index :content
      t.string :content
      t.timestamps
    end
  end
end
