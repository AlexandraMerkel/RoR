class MoviePerson < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person

  validates :movie_id, presence: true, uniqueness: {scope: :person_id}
  validates :person_id, presence: true
  validates :role, presence: true
end
