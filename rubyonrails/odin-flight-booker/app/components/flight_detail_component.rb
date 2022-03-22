# frozen_string_literal: true

class FlightDetailComponent < ViewComponent::Base
  attr_reader :flightAvailable

  def initialize(flightAvailable:)
    @flightAvailable = flightAvailable
  end

  def name
    @flightAvailable.name
  end

  def identificator
    @flightAvailable.id
  end

  def arrival_time
    @flightAvailable.duration
  end

  def departure_time
    @flightAvailable.departure_time
  end

  def show_time_readable(time)
    time.strftime('%Y-%m-%d %H:%M:%d')
  end

  def duration
    ((arrival_time - departure_time) / 3600).round.hours.inspect
  end
end
