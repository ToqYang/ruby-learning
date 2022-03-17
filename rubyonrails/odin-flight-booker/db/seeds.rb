# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# tables = ActiveRecord::Base.connection.tables - ['schema_migrations']

# # In PostgreSQL, it does not do this automatically. You can use TRUNCATE TABLE table RESTART IDENTITY;
# tables.each do |table|
#   ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY CASCADE")
# end

puts "START SEEDING"

Airport.codes.values.each do |i|
  if Airport.new(code: i).save
    puts "Created airport #{i}"
  else
    puts "Failed to create airport #{i}"
  end
end

MAX_AIRPORT_CODES = Airport.ids.max
MIN_AIRPORT_CODES = Airport.ids.min

100.times do |i|
  departure = 0
  arrival = 0

  while true
    departure = rand(MIN_AIRPORT_CODES..MAX_AIRPORT_CODES)
    arrival = rand(MIN_AIRPORT_CODES..MAX_AIRPORT_CODES)

    break if departure != arrival
  end

  departure_time = rand(-5.years..5.years).ago.to_datetime
  duration = departure_time + rand(1.hour..5.hours)
  flight = {
    departure_id: departure,
    arrival_id: arrival,
    name: "#{[*?A..?Z].sample( 2 ).join}#{rand 100..999}",
    duration: duration,
    departure_time: departure_time
  }
  if Flight.new(flight).save
    puts "Created flight #{i}"
  else
    puts "Failed to create flight #{i}"
  end
end