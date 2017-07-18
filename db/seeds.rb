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
user1 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "http://www.mtspartners.com/wp-content/uploads/sites/2/2015/03/dilmore-3977-large.png"
    )

user2 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "http://weknowyourdreams.com/images/woman/woman-02.jpg"
    )

user3 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "http://media.safebee.com/assets/images/2015/4/chef%20tips.jpg.838x0_q67_crop-smart.jpg"
    )

user4 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://s-media-cache-ak0.pinimg.com/originals/c1/70/18/c17018aef924c822fe072d97a03492a0.jpg"
    )

user5 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "http://saschoolofcookery.co.za/blog/wp-content/uploads/2013/06/a47bdb2ae5a99dc68185bc94a1d4224c_XL.jpg"
    )

user6 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://pbs.twimg.com/profile_images/3184873686/c7ed20aa023ccd8e11ffbc64a274fba0_400x400.jpeg"
    )

user7 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://dahlrestaurantgroup.com/wp-content/uploads/2017/03/Chef-Lisa-Dahl1-852x852.jpg"
    )

rem = User.create!(
  first_name: "Rémy",
    last_name: "Lichani",
    email: "rem.lichani@gmail.com",
    address: "Rue sisi",
    password: "bcg0802"
    )

puts "Creating categories..."
Category.create([{name:"French"}, {name:"Italian"}, {name:"Japanese"}, {name:"Chinese"}, {name: "Thaï"}, {name: "German"}, {name:"Spanish"}, {name: "Mexican"}])

puts "Creating menus..."
menu1 = Menu.create(
    name: "Risotto tomates et safran",
    description: "Excellent risotto crémeux et avec une note de citron. Tomate fraîche cuite au four.",
    category: Category.second,
    price: "17€",
    guests: 5,
    user: user1,
    remote_picture_url: "https://static.pexels.com/photos/505330/pexels-photo-505330.jpeg"
    )

menu1 = Menu.create(
    name: "Côte de boeuf (500g)",
    description: "Viande issue de l'agriculture biologique",
    category: Category.first,
    price: "25€",
    guests: 6,
    user: user2,
    remote_picture_url: "https://static.pexels.com/photos/65175/pexels-photo-65175.jpeg"
    )

puts "Finished!"
