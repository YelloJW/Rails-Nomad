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
flat_one = Flat.new(name: "Romantic Getaway in the Woods", description: "Really cosy", address: "Okehampton, Dartmoor, EX20 4AY", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
flat_one.photo.attach(io: file_one, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_one.save

file_two = URI.open('https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80')
flat_two = Flat.new(name: "Remote cabin on the mountain top", description: "Really remote", address: "Okehampton, Dartmoor, EX20 4HF", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_two.photo.attach(io: file_two, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_two.save

file_three = URI.open('https://images.unsplash.com/photo-1482192505345-5655af888cc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
flat_three = Flat.new(name: "Retreat on the beach", description: "Really windy", address: "Yelverton, Dartmoor, PL20 6SA", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_three.photo.attach(io: file_three, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_three.save

Flat.create!(name: "Very spacious 2 man yurt", description: "Really spacious", address: "Newton Abbot, TQ13 7PS", price_per_night: 80, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Yurt", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

file_four = URI.open("https://images.unsplash.com/photo-1475260151973-4b51c9c9af2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80")
flat_four = Flat.new(name: "Back to basics", description: "Really basic", address: "Buckfastleigh, Dartmoor, TQ11 0DZ", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_four.photo.attach(io: file_four, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_four.save

file_five = URI.open("https://images.unsplash.com/photo-1503542149301-75886cd3030c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_five = Flat.new(name: "Sunny place", description: "Really sunny", address: "Dartmoor, PL20 6RR", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_five.photo.attach(io: file_five, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_five.save

file_six = URI.open("https://images.unsplash.com/photo-1521401830884-6c03c1c87ebb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_six = Flat.new(name: "Loads of walking closeby", description: "Really a lot of walking", address: "Newton Abbot, Dartmoor, TQ13 8HS", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_six.photo.attach(io: file_six, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_six.save

file_seven = URI.open("https://images.unsplash.com/photo-1552686268-62bceb5e65d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80")
flat_seven = Flat.new(name: "Back to basics (in a good way!)", description: "Really basic in a good way", address: "Yelverton, Dartmoor, PL20 6TA", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_seven.photo.attach(io: file_seven, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_seven.save


file_eight = URI.open("https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2551&q=80")
flat_eight = Flat.new(name: "Back to basics without a log burner", description: "Really basic without a log burner", address: "Dartmoor", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_eight.photo.attach(io: file_eight, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_eight.save

file_nine = URI.open("https://images.unsplash.com/photo-1519395612667-3b754d7b9086?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
flat_nine = Flat.new(name: "Flora and fauna very closeby", description: "Really natural", address: "South Brent, Dartmoor, TQ10 9EL", price_per_night: 150, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Refuge", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_nine.photo.attach(io: file_nine, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_nine.save

file_ten = URI.open('https://images.unsplash.com/photo-1572050925391-b514ef4d0efe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
flat_ten = Flat.new(name: "Oakey dokey", description: "Really oakey", address: "3 West Street, Okehampton EX20 1HQ", price_per_night: 100, sleeps: 2, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
flat_ten.photo.attach(io: file_ten, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_ten.save

file_eleven = URI.open('https://images.unsplash.com/photo-1562314415-f14cd8ff1535?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
flat_eleven = Flat.new(name: "Cute place to stay", description: "Really cute", address: "Okehampton Railway Station, Station Road, Okehampton EX20 1EJ", price_per_night: 95, sleeps: 4, electricity: true, drinking_water: true, flat_type: "Cabin", user_id: 1, details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
flat_eleven.photo.attach(io: file_eleven, filename: 'some-image.jpg', content_type: 'image/jpg')
flat_eleven.save


puts "done"
