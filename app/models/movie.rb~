class Movie < ActiveRecord::Base
  belongs_to :movie_company
  has_many :movie_people
  has_many :cinema_timetables  
  has_and_belongs_to_many :countries

  validates :name, presence: true, uniqueness: {scope: :movie_company}
  validates :genre, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :duration, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :min_age, presence: true, inclusion: { in: [0, 6, 12, 16, 18] }

end
