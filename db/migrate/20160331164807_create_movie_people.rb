class CreateMoviePeople < ActiveRecord::Migration
  def change
    create_table :movie_people do |t|
      t.string :role, null: false
      t.references :movie, index: true, foreign_key: true, null: false
      t.references :person, index: true, foreign_key: true, null: false

      t.index [:movie_id, :person_id], unique: true

      t.timestamps null: false
    end
  end
end
