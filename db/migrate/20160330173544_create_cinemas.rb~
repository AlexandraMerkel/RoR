class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name, null: false
      t.string :address, null: false

      t.index :name, unique: true

      t.timestamps null: false
    end
  end
end
