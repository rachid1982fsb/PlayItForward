# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vol1 = Volunteer.new(username: "L33t Mango", name: "Earl Grey", organization: "Salty Fruits Inc.", image: '/assets/imgs/person1.jpg', biography: "Hi my name is Earl and I am lactose AND tolerant", status: Volunteer::STATUS[0], level: 1, points: 0)
vol1.password = "123"
vol1.save

vol2 = Volunteer.new(username: "L33t Apple", name: "Tiffany Talent", organization: "Sue Inc.", image: '/assets/imgs/person2.jpg', biography: "I am not here", status: Volunteer::STATUS[0], level: 1, points: 0)
vol2.password = "123"
vol2.save

vol3 = Volunteer.new(username: "L33t Watermelon", name: "Bananza Gonzalez", organization: "Twix Rights Inc.", image: '/assets/imgs/person3.jpg', biography: "I once rode a dolphin", status: Volunteer::STATUS[0], level: 1, points: 0)
vol3.password = "123"
vol3.save

vol4 = Volunteer.new(username: "L33t Orange", name: "Flippidy Gibbets", organization: "Monsters Inc.", image: '/assets/imgs/person4.jpg', biography: "You need not know my name, for my name is not need know.", status: Volunteer::STATUS[0], level: 1, points: 0)
vol4.password = "123"
vol4.save

