class Zone < ActiveRecord::Base
  has_many :prices

  validates :name, presence: true, uniqueness: true

end
