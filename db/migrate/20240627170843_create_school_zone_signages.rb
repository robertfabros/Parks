class CreateSchoolZoneSignages < ActiveRecord::Migration[6.1]
  def change
    create_table :school_zone_signages do |t|
      t.references :school, null: false, foreign_key: true
      t.references :school_zone, null: false, foreign_key: true
      t.string :sign_type, null: false
      t.string :sign_location, null: false

      t.timestamps
    end
  end
end
