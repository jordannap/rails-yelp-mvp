# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London", category: "chinese", phone_number: "067654989"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London", category: "italian", phone_number: "067778989"}
mamy = {name: "Mamy", address: "45 ali St, London", category: "belgian", phone_number: "067770349"}
tastyyy = {name: "Tastyyy", address: "534 Shoreditch High St, London", category: "french", phone_number: "0687879989"}
rebelato = {name: "Rebelato", address: "98 Boundary St, London", category: "italian", phone_number: "060908989"}

[dishoom, pizza_east, mamy, tastyyy, rebelato].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
