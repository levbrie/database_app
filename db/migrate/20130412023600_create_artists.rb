class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.integer :artist_id
      t.string :first_name
      t.string :last_name
      t.string :pseudonym
      t.string :nationality
      t.date :birth
      t.date :death
      t.string :url

      t.timestamps
    end
  end
end
