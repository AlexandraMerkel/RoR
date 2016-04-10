class Cinema < ActiveRecord::Base

  has_many :cinema_timetables  

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

end
