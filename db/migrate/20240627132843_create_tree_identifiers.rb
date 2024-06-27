class CreateTreeIdentifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_identifiers do |t|
      t.integer :identifier, null: false

      t.timestamps
    end
  end
end
