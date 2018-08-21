# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create!(name: 'Kanye West', genre: 'hip hop', bio: 'somethingsomething')
Artist.create!(name: 'Ed Sheeran', genre: 'folk', bio: 'somethingsomething')
Artist.create!(name: 'Taylor Swift', genre: 'pop', bio: 'somethingsomething')
Artist.create!(name: 'Eminem', genre: 'rap', bio: 'somethingsomething')
Artist.create!(name: 'Drake', genre: 'r&b', bio: 'somethingsomething')
Artist.create!(name: 'Green Day', genre: 'rock', bio: 'somethingsomething')

Venue.create!(name: "Grand Star Jazz Club", location: "Los Angeles", capacity: 300)
Venue.create!(name: "The End", location: "Nashville", capacity: 200)
Venue.create!(name: "Blackbird Ordinary", location: "Miami", capacity: 400)
Venue.create!(name: "Lincoln Hall", location: "Chicago", capacity: 507)
Venue.create!(name: "Santos Party House", location: "New York", capacity: 480)

Fan.create!(name: 'Billy', drunk: true, balance: 500, age: 19, favorite_artist: 'green day')
# Fan.create!(name: 'Sally', drunk: false, balance: 1000, age: 28, favorite_artist: 'u2')
# Fan.create!(name: 'Teddy', drunk: false, balance: 100, age: 20, favorite_artist: 'kendrick lamar')
# Fan.create!(name: 'Mary', drunk: true, balance: 400, age: 21, favorite_artist: 'bone thugs n harmony')
# Fan.create!(name: 'Freddy', drunk: false, balance: 2000, age: 32, favorite_artist: 'ludwig van beethoven')
# Fan.create!(name: 'Tammy', drunk: true, balance: 2500, age: 38, favorite_artist: 'frank sinatra')

Concert.create!(artist_id: 1, venue_id: 1, date: '2018-01-08', price: 120)
Concert.create!(artist_id: 1, venue_id: 2, date: '2018-01-08', price: 40)
Concert.create!(artist_id: 2, venue_id: 3, date: '2018-01-08', price: 80)
Concert.create!(artist_id: 3, venue_id: 4, date: '2018-01-08', price: 60)
Concert.create!(artist_id: 4, venue_id: 5, date: '2018-01-08', price: 50)
Concert.create!(artist_id: 5, venue_id: 2, date: '2018-01-08', price: 180)
Concert.create!(artist_id: 6, venue_id: 2, date: '2018-01-08', price: 100)
Concert.create!(artist_id: 3, venue_id: 3, date: '2018-01-08', price: 40)
Concert.create!(artist_id: 3, venue_id: 5, date: '2018-01-08', price: 60)

# Ticket.create!(fan_id: 1, concert_id: 1)
# Ticket.create!(fan_id: 5, concert_id: 2)
# Ticket.create!(fan_id: 3, concert_id: 3)
# Ticket.create!(fan_id: 6, concert_id: 4)
# Ticket.create!(fan_id: 2, concert_id: 5)
# Ticket.create!(fan_id: 4, concert_id: 6)
# Ticket.create!(fan_id: 1, concert_id: 7)
# Ticket.create!(fan_id: 6, concert_id: 8)
# Ticket.create!(fan_id: 5, concert_id: 9)

puts "It worked!"
