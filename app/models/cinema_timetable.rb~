class CinemaTimetable < ActiveRecord::Base
  belongs_to :cinema
  belongs_to :movie
  has_many :prices

  validates :hall, presence: true, uniqueness: {scope: :start}
  validates :start, presence: true
  
end
