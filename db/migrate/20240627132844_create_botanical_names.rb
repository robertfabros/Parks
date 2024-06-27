class CreateBotanicalNames < ActiveRecord::Migration[7.0]
  def change
    create_table :botanical_names do |t|
      t.string :scientific_name, null: false

      t.timestamps
    end
  end
end
