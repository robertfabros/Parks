class CreateElectoralWards < ActiveRecord::Migration[7.0]
  def change
    create_table :electoral_wards do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
