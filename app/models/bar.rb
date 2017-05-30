class Bar < ApplicationRecord
  has_many :availabilities
  has_many :tournaments
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
