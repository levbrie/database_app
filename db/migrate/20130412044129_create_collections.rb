class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :collection_id
      t.string :title
      t.string :manager
      t.integer :value
      t.integer :belongs_id
      t.integer :loaned_id

      t.timestamps
    end
  end
end
