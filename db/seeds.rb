# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB..."
User.destroy_all
Menu.destroy_all
Category.destroy_all

puts "Creating users..."
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "http://lorempixel.com/50/50/people/"
    )
end

User.create(
  first_name: "Rémy",
    last_name: "Lichani",
    email: "rem.lichani@gmail.com",
    address: "Rue sisi",
    password: "bcg0802"
    )

puts "Creating categories..."
Category.create([{name:"French"}, {name:"Italian"}, {name:"Japanese"}, {name:"Chinese"}, {name: "Thaï"}, {name: "German"}, {name:"Spanish"}, {name: "Mexican"}])

puts "Creating menus..."
10.times do
  Menu.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.sentences,
    category: Category.all.sample,
    price: Faker::Number.number(2),
    guests: Faker::Number.number(1),
    user: User.all.sample,
    remote_picture_url: "http://lorempixel.com/500/300/food/"
    )
end

puts "Finished!"
