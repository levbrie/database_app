class CreateArtReferredBies < ActiveRecord::Migration
  def change
    create_table :art_referred_bies do |t|
      t.integer :ref_id
      t.integer :art_id

      t.timestamps
    end
  end
end
