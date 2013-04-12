class CreateArtCategories < ActiveRecord::Migration
  def change
    create_table :art_categories do |t|
      t.integer :art_id
      t.string :cat_name

      t.timestamps
    end
  end
end
