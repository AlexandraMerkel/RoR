class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :second_name
      t.date :birthday, null: false

      t.timestamps null: false
    end
  end
end
