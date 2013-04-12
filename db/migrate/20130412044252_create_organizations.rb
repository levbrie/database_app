class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :org_id
      t.string :title
      t.string :description
      t.string :org_type

      t.timestamps
    end
  end
end
