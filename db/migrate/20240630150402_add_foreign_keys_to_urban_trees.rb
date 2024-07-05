class AddForeignKeysToUrbanTrees < ActiveRecord::Migration[7.1]
  def change
    add_reference :urban_trees, :common_name, foreign_key: true
    add_reference :urban_trees, :electoral_ward, foreign_key: true
  end
end
