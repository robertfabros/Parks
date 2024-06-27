class CreateTreeHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_healths do |t|
      t.string :status

      t.timestamps
    end
  end
end
