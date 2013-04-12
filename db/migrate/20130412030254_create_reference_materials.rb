class CreateReferenceMaterials < ActiveRecord::Migration
  def change
    create_table :reference_materials do |t|
      t.integer :ref_id
      t.string :title
      t.string :abstract
      t.string :content
      t.string :url

      t.timestamps
    end
  end
end
