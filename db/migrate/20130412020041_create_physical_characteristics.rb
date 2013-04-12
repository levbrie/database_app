class CreatePhysicalCharacteristics < ActiveRecord::Migration
  def change
    create_table :physical_characteristics do |t|
      t.integer :width
      t.integer :height
      t.integer :weight
      t.integer :volume
      t.integer :art_id

      t.timestamps
    end
  end
end
