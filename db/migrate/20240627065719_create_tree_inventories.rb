class CreateTreeInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_inventories do |t|
      t.references :tree_specy, null: false, foreign_key: true
      t.references :tree_health, null: false, foreign_key: true
      t.references :tree_location, null: false, foreign_key: true
      t.string :scientific_name
      t.float :diameter
      t.string :condition
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
