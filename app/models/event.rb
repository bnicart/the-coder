class Event < ApplicationRecord
  validates :start_time, presence: true
end
