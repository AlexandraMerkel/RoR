class Price < ActiveRecord::Base
  belongs_to :cinema_timetable
  belongs_to :zone

  validates :cost, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :cinema_timetable_id, presence: true, uniqueness: {scope: :zone_id}
  validates :zone_id, presence: true
  
end
