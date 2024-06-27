class CreateLocationClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :location_classes do |t|
      t.string :classification, null: false

      t.timestamps
    end
  end
end
