class Person < ActiveRecord::Base
  has_many :movie_people
 
  validates :last_name, presence: true, uniqueness: {scope: :first_name}
  validates :first_name, presence: true
  validates :birthday, presence: true
end
