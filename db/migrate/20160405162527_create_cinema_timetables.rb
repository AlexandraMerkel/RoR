class CreateCinemaTimetables < ActiveRecord::Migration
  def change
    create_table :cinema_timetables do |t|
      t.references :cinema, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
      t.string :hall, null: false
      t.timestamp :start, null: false

      t.index [:cinema_id, :hall, :start], unique: true

      t.timestamps null: false
    end
  end
end
