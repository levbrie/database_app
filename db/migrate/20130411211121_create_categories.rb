class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_name
      t.string :genre
      t.string :material

      t.timestamps
    end
  end
end
