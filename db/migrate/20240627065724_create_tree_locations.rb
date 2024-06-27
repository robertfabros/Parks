class CreateTreeLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_locations do |t|
      t.string :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
