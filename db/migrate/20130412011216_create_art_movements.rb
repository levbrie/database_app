class CreateArtMovements < ActiveRecord::Migration
  def change
    create_table :art_movements do |t|
      t.integer :movement_id
      t.string :title
      t.string :region
      t.integer :year_start
      t.integer :year_end
      t.string :time_period_name

      t.timestamps
    end
  end
end
