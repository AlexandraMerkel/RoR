class CinemaTimetable < ActiveRecord::Base
  belongs_to :cinema
  belongs_to :movie
  has_many :prices

  validates :hall, presence: true, uniqueness: {scope: :start, :cinema_id}
  validates :start, presence: true
  validates :cinema_id, presenece: true
  validates :movie_id, presenece: true
  
end
