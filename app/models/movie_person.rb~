class MoviePerson < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person

  validates :movie_id, presence: true, uniqueness: {scope: :person_id}
end
