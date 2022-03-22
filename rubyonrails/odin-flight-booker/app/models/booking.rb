class Booking < ApplicationRecord
  has_many :passengers_scheduled, class_name: "Passenger", foreign_key: "passenger_id"
  has_many :flights_scheduled, class_name: "Flight", foreign_key: "flight_id"
end
