class Price < ActiveRecord::Base
  belongs_to :cinema_timetable
  belongs_to :zone

  validates :name, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :cinema_timetable_id, uniqueness: {scope: :zone_id}
end
