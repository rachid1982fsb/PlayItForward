# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vol1 = Volunteer.new(username: "L33t Mango", name: "Earl Grey", organization: "Salty Fruits Inc.", image: '/assets/imgs/person1.jpg', biography: "Hi my name is Earl and I am lactose AND tolerant", status: Volunteer::STATUSES[0], level: 1, points: 0)
vol1.password = "123"
vol1.save

vol2 = Volunteer.new(username: "L33t Apple", name: "Tiffany Talent", organization: "Sue Inc.", image: '/assets/imgs/person2.jpg', biography: "I am not here", status: Volunteer::STATUSES[0], level: 1, points: 0)
vol2.password = "123"
vol2.save

vol3 = Volunteer.new(username: "L33t Watermelon", name: "Bananza Gonzalez", organization: "Twix Rights Inc.", image: '/assets/imgs/person3.jpg', biography: "I once rode a dolphin", status: Volunteer::STATUSES[0], level: 1, points: 0)
vol3.password = "123"
vol3.save

np1 = Nonprofit.new(username: "ForProfit", name: "We help bears and people named Earl", address: "7th circle of Heaven", logo: "", description: "We actually don't help people named Earl", mission: "To lie pathologically")
np1.password = "123"
np1.save

np2 = Nonprofit.new(username: "ForOnions", name: "Uhhhhhh", address: "4th Square of Los Angeles", logo: "", description: "We juggle cats and melons", mission: "To lie pathologically")
np2.password = "123"
np2.save

ev1 = Event.new(name: "Walk for Good", location: "A Mountain", date: "March 2, 2018", description: "Walking?")
ev1.save

ev2 = Event.new(name: "Run for Bad", location: "A track, LIKE A CAR TRACK", date: "June 6th, 2006", description: "FEEL THE BURN!")
ev2.save

enp1 = EventNonprofit.create(event_id: ev1.id, nonprofit_id: np1.id)
enp2 = EventNonprofit.create(event_id: ev2.id, nonprofit_id: np2.id)

evv1 = EventVolunteer.create(event_id: ev1.id, volunteer_id: vol1.id, hours: 20, multiplier: 2)
evv2 = EventVolunteer.create(event_id: ev2.id, volunteer_id: vol2.id, hours: 7, multiplier: 4)
evv3 = EventVolunteer.create(event_id: ev2.id, volunteer_id: vol1.id, hours: 6, multiplier: 3)
evv4 = EventVolunteer.create(event_id: ev1.id, volunteer_id: vol3.id, hours: 18, multiplier: 1)

vnp1 = VolunteerNonprofit.create(volunteer_id: vol1.id, nonprofit_id: np1.id, hours: 12, description: "The Nice Kind", multiplier: 2)
vnp2 = VolunteerNonprofit.create(volunteer_id: vol2.id, nonprofit_id: np2.id, hours: 20, description: "The Evil Kind", multiplier: 3)
vnp3 = VolunteerNonprofit.create(volunteer_id: vol3.id, nonprofit_id: np2.id, hours: 6, description: "The Smelly Kind", multiplier: 1)