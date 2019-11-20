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

file_one = URI.open('https://images.unsplash.com/photo-1510798831971-661eb04b3739?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
flat_one = Flat.new(name: "Romantic Getaway in the Woods", description: "Really cosy", address: "Dartmoor, 1", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1 )
flat_one.photo.attach(io: file_one, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_one.save

file_two = URI.open('https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80')
flat_two = Flat.new(name: "Remote cabin on the mountain top", description: "Really remote", address: "Dartmoor, 2", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1)
flat_two.photo.attach(io: file_two, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_two.save

file_three = URI.open('https://images.unsplash.com/photo-1482192505345-5655af888cc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
flat_three = Flat.new(name: "Retreat on the beach", description: "Really windy", address: "Dartmoor, 3", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1)
flat_three.photo.attach(io: file_three, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_three.save

Flat.create!(name: "Very spacious 2 man yurt", description: "Really spacious", address: "Dartmoor, 4", price_per_night: 80, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Yurt", user_id: 1)

file_four = URI.open("https://images.unsplash.com/photo-1475260151973-4b51c9c9af2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80")
flat_four = Flat.new(name: "Back to basics", description: "Really basic", address: "Dartmoor, 5", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_four.photo.attach(io: file_four, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_four.save

file_five = URI.open("https://images.unsplash.com/photo-1503542149301-75886cd3030c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_five = Flat.new(name: "Sunny place", description: "Really sunny", address: "Dartmoor, 6", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_five.photo.attach(io: file_five, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_five.save

file_six = URI.open("https://images.unsplash.com/photo-1521401830884-6c03c1c87ebb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_six = Flat.new(name: "Loads of walking closeby", description: "Really a lot of walking", address: "Dartmoor, 7", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_six.photo.attach(io: file_six, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_six.save

file_seven = URI.open("https://images.unsplash.com/photo-1552686268-62bceb5e65d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80")
flat_seven = Flat.new(name: "Back to basics (in a good way!)", description: "Really basic in a good way", address: "Dartmoor, 8", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_seven.photo.attach(io: file_seven, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_seven.save


file_eight = URI.open("https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2551&q=80")
flat_eight = Flat.new(name: "Back to basics without a log burner", description: "Really basic without a log burner", address: "Dartmoor, 9", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_eight.photo.attach(io: file_eight, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_eight.save

file_nine = URI.open("https://images.unsplash.com/photo-1519395612667-3b754d7b9086?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_nine = Flat.new(name: "Flora and fauna very closeby", description: "Really natural", address: "Dartmoor, 10", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1)
flat_nine.photo.attach(io: file_nine, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_nine.save

puts "done"
