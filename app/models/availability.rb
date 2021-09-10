class Availability < ApplicationRecord
  belongs_to :coach
  has_many :timeslots
end
