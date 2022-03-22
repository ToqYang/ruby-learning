class Airport < ApplicationRecord
  enum code: [:SYC, :NYC]
  validates :code, uniqueness: true

  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_id"
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_id"

  def self.search_code(airport_name)
    Airport.where(code: airport_name)&.first
  end
end
