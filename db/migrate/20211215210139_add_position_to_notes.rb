class AddPositionToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :position, :integer
  end
end
