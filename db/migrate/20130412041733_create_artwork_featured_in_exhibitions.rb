class CreateArtworkFeaturedInExhibitions < ActiveRecord::Migration
  def change
    create_table :artwork_featured_in_exhibitions do |t|
      t.integer :art_id
      t.integer :exhibition_id

      t.timestamps
    end
  end
end
