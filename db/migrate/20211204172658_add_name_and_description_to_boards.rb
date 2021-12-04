class AddNameAndDescriptionToBoards < ActiveRecord::Migration[6.1]
  def change
    change_table :boards do |t|
      t.string :name
      t.index :name

      t.string :description
      t.index :description
    end
  end
end
