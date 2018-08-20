# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.create!(name: 'Kanye West', genre: 'hip hop', years_experience: 13)
Artist.create!(name: 'Ed Sheeran', genre: 'folk', years_experience: 7)
Artist.create!(name: 'Taylor Swift', genre: 'pop', years_experience: 12)
Artist.create!(name: 'Eminem', genre: 'rap', years_experience: 22)
Artist.create!(name: 'Drake', genre: 'r&b', years_experience: 8)
Artist.create!(name: 'Green Day', genre: 'rock', years_experience: 28)

Venue.create!(name: "Grand Star Jazz Club", location: "Los Angeles", capacity: 300)
Venue.create!(name: "The End", location: "Nashville", capacity: 200)
Venue.create!(name: "Blackbird Ordinary", location: "Miami", capacity: 400)
Venue.create!(name: "Lincoln Hall", location: "Chicago", capacity: 507)
Venue.create!(name: "Santos Party House", location: "New York", capacity: 480)

Fan.create!(name: 'Billy', drunk: true, balance: 500, age: 19, favorite_artist: 'green day')
Fan.create!(name: 'Sally', drunk: false, balance: 1000, age: 28, favorite_artist: 'u2')
Fan.create!(name: 'Teddy', drunk: false, balance: 100, age: 20, favorite_artist: 'kendrick lamar')
Fan.create!(name: 'Mary', drunk: true, balance: 400, age: 21, favorite_artist: 'bone thugs n harmony')
Fan.create!(name: 'Freddy', drunk: false, balance: 2000, age: 32, favorite_artist: 'ludwig van beethoven')
Fan.create!(name: 'Tammy', drunk: true, balance: 2500, age: 38, favorite_artist: 'frank sinatra')

Concert.create!(artist_id: 1, venue_id: 1)
Concert.create!(artist_id: 1, venue_id: 2)
Concert.create!(artist_id: 2, venue_id: 3)
Concert.create!(artist_id: 3, venue_id: 4)
Concert.create!(artist_id: 4, venue_id: 5)
Concert.create!(artist_id: 5, venue_id: 2)
Concert.create!(artist_id: 6, venue_id: 2)
Concert.create!(artist_id: 3, venue_id: 3)
Concert.create!(artist_id: 3, venue_id: 5)

Ticket.create!(price: 60, fan_id: 1, concert_id: 1)
Ticket.create!(price: 100, fan_id: 5, concert_id: 2)
Ticket.create!(price: 120, fan_id: 3, concert_id: 3)
Ticket.create!(price: 80, fan_id: 6, concert_id: 4)
Ticket.create!(price: 30, fan_id: 2, concert_id: 5)
Ticket.create!(price: 10, fan_id: 4, concert_id: 6)
Ticket.create!(price: 45, fan_id: 1, concert_id: 7)
Ticket.create!(price: 180, fan_id: 6, concert_id: 8)
Ticket.create!(price: 80, fan_id: 5, concert_id: 9)


puts 'it worked!'
