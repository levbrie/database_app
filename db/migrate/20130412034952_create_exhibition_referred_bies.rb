class CreateExhibitionReferredBies < ActiveRecord::Migration
  def change
    create_table :exhibition_referred_bies do |t|
      t.integer :exhibtion_id
      t.integer :ref_id

      t.timestamps
    end
  end
end
