class Airport < ApplicationRecord
  enum code: [:SYC, :NYC]
  validates :code, uniqueness: true

  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_id"
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_id"
end
