class Shuttle < ApplicationRecord
    validates :lat, presence: true
    validates :lng, presence: true
  end