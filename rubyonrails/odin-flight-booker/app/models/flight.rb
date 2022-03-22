class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_id"

  validates :departure_id, presence: true
  validates :arrival_id, presence: true
  validates_associated :departure_airport
  validates_associated :arrival_airport
  validate :not_equal_airport

  def self.year_available
    Flight.all.map { |flight| flight.departure_time.year }.uniq
  end

  def self.month_available
    Flight.all.map { |flight| flight.departure_time.month }.uniq
  end

  def self.day_available
    Flight.all.map { |flight| flight.departure_time.day }.uniq
  end

  def self.built_date_from_string(day = "1", month = "1", year = "2001")
    p "day: #{day.class}, month: #{month}, year: #{year}"
    if day == nil && month == nil && year == nil
      day = "1"
      month = "1"
      year = "2001"
    end
    "#{day}-#{month}-#{year}".to_datetime&.all_day
  end

  private

    def not_equal_airport
      if departure_id == arrival_id
        self.errors.add(:departure_id, "Fligh cannot be equal departure and arrival")
      end
    end
end
