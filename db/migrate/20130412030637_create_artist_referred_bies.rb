class CreateArtistReferredBies < ActiveRecord::Migration
  def change
    create_table :artist_referred_bies do |t|
      t.integer :ref_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
