class Timeslot < ApplicationRecord
  belongs_to :availability
  belongs_to :coach
end
