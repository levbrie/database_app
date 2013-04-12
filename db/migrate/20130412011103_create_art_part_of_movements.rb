class CreateArtPartOfMovements < ActiveRecord::Migration
  def change
    create_table :art_part_of_movements do |t|
      t.integer :art_id
      t.integer :movement_id

      t.timestamps
    end
  end
end
