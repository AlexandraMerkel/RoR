class MoviePerson < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person

  validates :role, presence: true, uniqueness: {scope: [:movie_id, :person_id]}
end
