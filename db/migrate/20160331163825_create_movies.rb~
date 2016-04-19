class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.integer :min_age, null: false, default: 0
      t.integer :genre, null: false
      t.integer :duration, null: false
      t.references :movie_company, index: true, foreign_key: true, null: false

      t.index [:name, :movie_company_id], unique: true

      t.timestamps null: false
    end
  end
end
