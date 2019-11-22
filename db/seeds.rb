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

file_one = URI.open('https://images.unsplash.com/photo-1520321661969-8310372a8ea3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
file_one_photo2 = URI.open('https://images.unsplash.com/photo-1552335270-a1cdfc205557?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1656&q=80')
file_one_photo3 = URI.open('https://images.unsplash.com/photo-1478281437946-5179e2443a10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
flat_one = Flat.new(name: "Romantic Getaway in the Woods", description: "Really cosy", address: "Moorside, Lydford Nr, Okehampton, Dartmoor, EX20 4AY", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
flat_one.photos.attach(io: file_one, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: file_one_photo2, filename: 'some-image2.jpg', content_type: 'image/jpg')
flat_one.photos.attach(io: file_one_photo3, filename: 'some-image3.jpg', content_type: 'image/jpg')
flat_one.save

file_two = URI.open('https://images.unsplash.com/photo-1542321994-0df81c449c17?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
file_two_photo2 = URI.open('https://images.unsplash.com/photo-1546420536-98a689a2074b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2389&q=80')
file_two_photo3 = URI.open('https://images.unsplash.com/photo-1552840631-d56341170ac4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80')
flat_two = Flat.new(name: "Remote cabin on the mountain top", description: "Really remote", address: "Okehampton, Dartmoor, EX20 4HF", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_two.photos.attach(io: file_two, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: file_two_photo2, filename: 'some-image2.jpg', content_type: 'image/jpg')
flat_two.photos.attach(io: file_two_photo3, filename: 'some-image3.jpg', content_type: 'image/jpg')
flat_two.save

file_three = URI.open('https://images.unsplash.com/photo-1482192505345-5655af888cc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
file_three_photo2 = URI.open('https://images.unsplash.com/photo-1535747790212-30c585ab4867?ixlib=rb-1.2.1&auto=format&fit=crop&w=1611&q=80')
file_three_photo3 = URI.open('https://images.unsplash.com/photo-1493275396257-7df0f22e0c88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
flat_three = Flat.new(name: "Retreat on the beach", description: "Really windy", address: "Chagford, Dartmoor, TQ13 8JN", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_three.photos.attach(io: file_three, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: file_three_photo2, filename: 'some-image2.jpg', content_type: 'image/jpg')
flat_three.photos.attach(io: file_three_photo3, filename: 'some-image3.jpg', content_type: 'image/jpg')
flat_three.save

Flat.create!(name: "Very spacious 2 man yurt", description: "Really spacious", address: "Princetown, Hexworthy, Yelverton, Dartmoor, PL20 6SD", price_per_night: 80, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Yurt", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

file_four = URI.open("https://images.unsplash.com/photo-1475260151973-4b51c9c9af2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80")
flat_four = Flat.new(name: "Back to basics", description: "Really basic", address: "Station House, Dart Bridge Rd, Buckfastleigh, Dartmoor, TQ11 0DZ", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_four.photos.attach(io: file_four, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_four.save

file_five = URI.open("https://images.unsplash.com/photo-1503542149301-75886cd3030c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_five = Flat.new(name: "Sunny place", description: "Really sunny", address: "Tavistock Rd, Princetown, Yelverton, Dartmoor, PL20 6RR", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_five.photos.attach(io: file_five, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_five.save

file_six = URI.open("https://images.unsplash.com/photo-1521401830884-6c03c1c87ebb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_six = Flat.new(name: "Loads of walking closeby", description: "Really a lot of walking", address: "South Creaber Farm, B3212, Gidleigh, Newton Abbot, Dartmoor, TQ13 8HS", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_six.photos.attach(io: file_six, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_six.save

file_seven = URI.open("https://images.unsplash.com/photo-1552686268-62bceb5e65d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80")
flat_seven = Flat.new(name: "Back to basics (in a good way!)", description: "Really basic in a good way", address: "Postbridge, Yelverton, Dartmoor, PL20 6TA", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_seven.photos.attach(io: file_seven, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_seven.save


file_eight = URI.open("https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2551&q=80")
flat_eight = Flat.new(name: "Back to basics without a log burner", description: "Really basic without a log burner", address: "Yelverton, Sheepstor, Dartmoor, PL20 6PG", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_eight.photos.attach(io: file_eight, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_eight.save

file_nine = URI.open("https://images.unsplash.com/photo-1519395612667-3b754d7b9086?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_nine = Flat.new(name: "Flora and fauna very closeby", description: "Really natural", address: "South Brent, Dartmoor, TQ10 9EL", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_nine.photos.attach(io: file_nine, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_nine.save

file_ten = URI.open('https://images.unsplash.com/photo-1572050925391-b514ef4d0efe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
flat_ten = Flat.new(name: "Oakey dokey", description: "Really oakey", address: "3 West Street, Okehampton EX20 1HQ", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
flat_ten.photos.attach(io: file_ten, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_ten.save

file_eleven = URI.open('https://images.unsplash.com/photo-1562314415-f14cd8ff1535?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
flat_eleven = Flat.new(name: "Cute place to stay", description: "Really cute", address: "Okehampton Railway Station, Station Road, Okehampton EX20 1EJ", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_eleven.photos.attach(io: file_eleven, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_eleven.save


puts "done"
