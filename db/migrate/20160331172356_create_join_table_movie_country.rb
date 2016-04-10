class CreateJoinTableMovieCountry < ActiveRecord::Migration
  def change
    create_join_table :movies, :countries do |t|
      t.index [:movie_id, :country_id], unique: true
      # t.index [:country_id, :movie_id]
    end
  end
end
