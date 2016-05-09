class Movie < ActiveRecord::Base
  belongs_to :movie_company
  has_many :movie_people
  has_many :cinema_timetables  
  has_and_belongs_to_many :countries

  validates :name, presence: true, uniqueness: {scope: :movie_company}
  validates :genre, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 16}
  validates :duration, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :min_age, presence: true, inclusion: { in: [0, 6, 12, 16, 18] }

  GENRES = {0=>"биография", 1=>"боевик", 2=>"вестерн", 3=>"детектив", 4=>"документальный", 5=>"драма", 6=>"история", 7=>"комедия", 8=>"мелодрама", 9=>"мультфильм", 10=>"приключения", 11=>"семейный", 12=>"спорт", 13=>"триллер", 14=>"ужасы", 15=>"фантастика", 16=>"фэнтези"}

end
