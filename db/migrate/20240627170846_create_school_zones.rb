class CreateSchoolZones < ActiveRecord::Migration[6.1]
  def change
    create_table :school_zones do |t|
      t.string :zone_name, null: false

      t.timestamps
    end
  end
end
