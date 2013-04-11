class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :art_id
      t.string :title
      t.integer :value
      t.string :condition
      t.integer :collection_id
      t.date :purchase_date
      t.date :creation_date

      t.timestamps
    end
  end
end
