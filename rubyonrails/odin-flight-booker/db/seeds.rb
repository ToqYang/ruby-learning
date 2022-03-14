# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "STARR SEEDING"

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
  
  if Flight.new(departure_id: departure, arrival_id: arrival).save
    puts "Created flight #{i}"
  else
    puts "Failed to create flight #{i}"
  end
end