class CreateCommonNames < ActiveRecord::Migration[7.0]
  def change
    create_table :common_names do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
