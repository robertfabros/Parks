class CreateNeighbourhoods < ActiveRecord::Migration[7.1]
  def change
    create_table :neighbourhoods do |t|
      t.string :name

      t.timestamps
    end
  end
end
