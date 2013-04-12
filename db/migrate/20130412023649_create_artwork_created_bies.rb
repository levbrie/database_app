class CreateArtworkCreatedBies < ActiveRecord::Migration
  def change
    create_table :artwork_created_bies do |t|
      t.integer :artist_id
      t.integer :art_id

      t.timestamps
    end
  end
end
