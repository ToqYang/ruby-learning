class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_id"

  validates :departure_id, presence: true
  validates :arrival_id, presence: true
  validates_associated :departure_airport
  validates_associated :arrival_airport
  validate :not_equal_airport

  private

  def not_equal_airport
    if departure_id == arrival_id
      self.errors.add(:departure_id, "Fligh cannot be equal departure and arrival")
    end
  end
end
