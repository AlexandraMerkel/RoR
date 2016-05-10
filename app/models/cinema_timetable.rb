class CinemaTimetable < ActiveRecord::Base
  belongs_to :cinema
  belongs_to :movie
  has_many :prices

  validates :hall, presence: true, uniqueness: {scope: [:start, :cinema_id]}
  validates :start, presence: true
  validates :cinema_id, presence: true
  validates :movie_id, presence: true
  
end
