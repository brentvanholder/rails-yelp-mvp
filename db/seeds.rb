# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '724 203 3611', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: 'Shoreditch High 56 St, London', phone_number: '561 460 9010', category: 'belgian' }
kfc = { name: 'KFC', address: 'Avenue Street 67, Barkley', phone_number: '518 206 4372', category: 'japanese' }
mcdonalds = { name: 'Mc Donalds', address: 'Main Road 44, Birmingham', phone_number: '925 299 4213', category: 'french' }
burger_king = { name: 'Burger king', address: 'Cross Avenue 21, Dublin', phone_number: '956 972 3116', category: 'italian' }

[dishoom, pizza_east, kfc, mcdonalds, burger_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
