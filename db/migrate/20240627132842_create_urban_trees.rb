class CreateUrbanTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :urban_trees do |t|
      t.references :tree_identifier, null: false, foreign_key: true
      t.references :botanical_name, null: false, foreign_key: true
      t.references :common_name, null: false, foreign_key: true
      t.references :electoral_ward, null: false, foreign_key: true
      t.references :location_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
