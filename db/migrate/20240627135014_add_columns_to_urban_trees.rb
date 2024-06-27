class AddColumnsToUrbanTrees < ActiveRecord::Migration[6.1]
  def change
    add_column :urban_trees, :common_name, :string
    add_column :urban_trees, :electoral_ward, :string
    remove_column :urban_trees, :tree_identifier_id, :integer
    remove_column :urban_trees, :botanical_name_id, :integer
    remove_column :urban_trees, :location_class_id, :integer
  end
end
