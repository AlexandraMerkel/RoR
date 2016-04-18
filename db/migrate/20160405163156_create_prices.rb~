class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :cost, null: false
      t.references :cinema_timetable, index: true, foreign_key: true, null: false
      t.references :zone, index: true, foreign_key: true, null: false

      t.index [:cinema_timetable_id, :zone_id], unique: true

      t.timestamps null: false
    end
  end
end
