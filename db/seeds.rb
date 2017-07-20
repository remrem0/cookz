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
user1 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://www.incimages.com/uploaded_files/image/100x100/Jason-Fried-Founder-37Signals-bkt_5667.jpg"
    )

user2 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://i1.rgstatic.net/ii/profile.image/AS%3A317763527086084%401452772136719_m/Naira_Topooco.png"
    )

user3 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://www.incimages.com/uploaded_files/image/100x100/Kevin_58365.jpg"
    )

user4 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://usercontent1.hubstatic.com/7064006_100.jpg"
    )

user5 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://i.forbesimg.com/under30video/images/menu-thumbs/face-2-face-thumb.png"
    )

user6 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://media.npr.org/about/people/bios/biophotos/jmccarthy.150_sq-e3462dac4f58e91ffec445013ca0909a769f1fab-s100-c85.jpg"
    )

user7 = User.create(
    first_name: "Micha",
    last_name: "Boidel",
    email: "m.boidel@mail.me",
    address: Faker::Address.street_address,
    password: Faker::Internet.password(8),
    remote_avatar_url: "https://www.plantoeat.com/blog/wp-content/about_images/face-inspiredtoaction.jpg"
    )

rem = User.create(
  first_name: "Rémy",
    last_name: "Lichani",
    email: "rem.lichani@gmail.com",
    address: "Rue sisi",
    password: "bcg0802"
    )

con = User.create(
  first_name: "Consti",
    last_name: "11",
    email: "constantin.pahl@gmail.com",
    address: "Rue soso",
    password: "Lewagon2017"
    )

puts "Creating categories..."
Category.create([{name:"French"}, {name:"Italian"}, {name:"Japanese"}, {name:"Chinese"}, {name: "Thaï"}, {name: "German"}, {name:"Spanish"}, {name: "Mexican"}])

puts "Creating menus..."
menu1 = Menu.create(
    name: "Risotto tomates et safran",
    description: "Excellent risotto crémeux et avec une note de citron. Tomate fraîche cuite au four.",
    category: Category.second,
    price: "17€",
    city: "Paris",
    guests: 5,
    user: user1,
    remote_picture_url: "https://static.pexels.com/photos/505330/pexels-photo-505330.jpeg"
    )

menu2 = Menu.create(
    name: "Côte de boeuf (500g)",
    description: "Viande issue de l'agriculture biologique",
    category: Category.first,
    price: "25€",
    city: "Paris",
    guests: 6,
    user: user2,
    remote_picture_url: "https://static.pexels.com/photos/65175/pexels-photo-65175.jpeg"
    )

menu3 = Menu.create(
    name: "Pad thaï",
    description: "Douceur thaïlandaise préparée selon la tradition",
    category: Category.fifth,
    city: "Paris",
    price: "16€",
    guests: 7,
    user: user3,
    remote_picture_url: "http://img.taste.com.au/-rXeYPJs/taste/2016/11/chicken-pad-thai-94082-1.jpeg"
    )

menu4 = Menu.create!(
    name: "Tapas",
    description: "hello",
    city: "Nantes",
    category: Category.all[7],
    price: "25€",
    guests: 10,
    user: user4,
    remote_picture_url: "http://www.eatapas.co.uk/img/cms/EATAPAS%20SUGGESTIONS/Cheese%20Consejos/CHEESE%20TRAY.jpg"
    )

menu5 = Menu.create!(
    name: "Filet de bar rôti",
    city: "Nantes",
    description: "Emulsion",
    category: Category.first,
    price: "23€",
    guests: 4,
    user: user5,
    remote_picture_url: "http://www.bureaudepresseagro.com/wp-content/uploads/2014/09/7493-Filet-de-Bar-iod%C3%A9.jpg"
    )

menu6 = Menu.create!(
    name: "Plateau sushis maison",
    city: "Nantes",
    description: "hello",
    category: Category.third,
    price: "20€",
    guests: 9,
    user: user6,
    remote_picture_url: "https://static.pexels.com/photos/213939/pexels-photo-213939.jpeg"
    )

menu6 = Menu.create!(
    name: "Hamburger et frites maison",
    city: "Nantes",
    description: "Viande issue de l'agriculture biologique. Frites de patates de Noirmoutier avec une pointe de gros sel. Un délice !",
    category: Category.first,
    price: "13€",
    guests: 4,
    user: user7,
    remote_picture_url: "https://static.pexels.com/photos/70497/pexels-photo-70497.jpeg"
    )

puts "Finished"
