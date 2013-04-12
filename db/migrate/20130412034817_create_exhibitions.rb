class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.integer :exhibition_id
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :location
      t.integer :organizer

      t.timestamps
    end
  end
end
