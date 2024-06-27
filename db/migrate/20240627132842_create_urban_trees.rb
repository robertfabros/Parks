class CreateUrbanTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :urban_trees do |t|
      t.string :common_name
      t.string :electoral_ward

      t.timestamps
    end
  end
end
