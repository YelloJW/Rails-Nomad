# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying previous seeds"
Flat.destroy_all

puts "Creating seeds"


Flat.create!(name: "Romantic Getaway in the Woods", description: "Really cosy", address: "Brecon Beacons 100", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1)
Flat.create!(name: "Remote cabin on the mountain top", description: "Really remote", address: "Fort William", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1)
Flat.create!(name: "Retreat on the beach", description: "Really windy", address: "Cornwall", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Yurt", user_id: 1)
Flat.create!(name: "Very spacious 2 man yurt", description: "Really spacious", address: "Brecon Beacons 21", price_per_night: 80, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Yurt", user_id: 1)
Flat.create!(name: "Back to basics", description: "Really basic", address: "Brecon Beacons 1", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
Flat.create!(name: "Sunny place", description: "Really sunny", address: "Brecon Beacons 123", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
Flat.create!(name: "Loads of walking closeby", description: "Really a lot of walking", address: "Brecon Beacons 12345", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
Flat.create!(name: "Back to basics (in a good way!)", description: "Really basic in a good way", address: "Brecon Beacons 134566", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
Flat.create!(name: "Back to basics without a log burner", description: "Really basic without a log burner", address: "Brecon Beacons 1098765", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
Flat.create!(name: "Flora and fauna very closeby", description: "Really natural", address: "Brecon Beacons 109876", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)



puts "done"
