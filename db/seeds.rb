# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'date'

# Instruments

vocals = Instrument.create(name: "Vocals", icon: 'microphone-icon.png')
guitar = Instrument.create(name: "Guitar", icon: 'guitar-icon.png')
sax = Instrument.create(name: "Saxophone", icon: 'sax-icon.png')
drums = Instrument.create(name: "Drums", icon: 'drum-icon.png')
cowbell = Instrument.create(name: "Cowbell", icon: 'cowbell-icon.png')

# Neighborhoods

rogers = Neighborhood.create(name: 'Rogers Park')
bucktown = Neighborhood.create(name: 'Bucktown')
south = Neighborhood.create(name: 'South Loop')
lakeview = Neighborhood.create(name: 'Lakeview')
hyde = Neighborhood.create(name: 'Hyde Park')
river = Neighborhood.create(name: 'River North')

walken = User.create(first_name: "Christopher",
            last_name: "Walken",
            email: "needmore@cowbell.org",
            password: "testing",
            password_confirmation: "testing",
            img_url: 'walken.jpg',
            description: 'I got a fevah, and the only prescription...is more cowbell',
            neighborhood: bucktown)

axel = User.create(first_name: "Axel", last_name: "Rose", email: "sweetchild@omine.org", password: "testing", password_confirmation: "testing", img_url: 'axl_rose.jpeg', description: 'Nanananananannana neeee neeeee', neighborhood: bucktown)

freddy = User.create(first_name: "Freddy", last_name: "Mercury", email: "moustache@queen.org", password: "testing", password_confirmation: "testing", img_url: 'mercury.png', description: 'People on the streets. Ba-da-dee-dop-dop', neighborhood: bucktown)

rivers = User.create(first_name: "Rivers", last_name: "Cuomo", email: "rivers@weezer.org", password: "testing", password_confirmation: "testing", img_url: 'cuomo.jpg', description: 'Beverly Hills, thats where I want to be', neighborhood: hyde)

henry = User.create(first_name: "Henry", last_name: "Rollins", email: "henry@blackflag.org", password: "testing", password_confirmation: "testing", img_url: 'rollins.jpg', description: 'Whats the matter man? Is the time not right?', neighborhood: river)

kenny = User.create(first_name: "Kenny", last_name: "G", email: "kenny@kenny.org", password: "testing", password_confirmation: "testing", img_url: 'kenny_g_2.jpg', description: 'Awesome musician looking for other awesome musicians.', neighborhood: lakeview)

tina = User.create(first_name: "Tina", last_name: "Turner", email: "simplytheest@tina.org", password: "testing", password_confirmation: "testing", img_url: 'turner.jpg', description: 'Whats love got to do, got to do with it?', neighborhood: south)

joan = User.create(first_name: "Joan", last_name: "Jett", email: "joan@runaways.org", password: "testing", password_confirmation: "testing", img_url: 'jett.jpg', neighborhood: rogers)


# Comments

Comment.create(content: 'This guy was so great to play with.  Musical Genius', rating: rand(1..5), commenter_id: rand(1..7), receiver_id: rand(1..7))


Comment.create(content: 'Barf!', rating: rand(1..5), commenter_id: rand(1..7), receiver_id: rand(1..7))

Comment.create(content: 'Rock on dude!', rating: rand(1..5), commenter_id: rand(1..7), receiver_id: rand(1..7))


Comment.create(content: 'Smoooth', rating: rand(1..5), commenter_id: rand(1..7), receiver_id: rand(1..7))


Comment.create(content: 'Legendary skills...psyche!', rating: rand(1..5), commenter_id: rand(1..7), receiver_id: rand(1..7))



# tag-list

list = ['Jazz', 'Classical', 'Metal', 'Country', 'Blues', 'Punk']

list.each do |tag|
  ActsAsTaggableOn::Tag.create(name: tag)
end


# user_instruments

UserInstrument.create(user: walken, instrument: cowbell, skill_level: rand(1..5), genre_list: 'punk')
UserInstrument.create(user: axel, instrument: guitar, skill_level: rand(1..5), genre_list: 'metal')
UserInstrument.create(user: freddy, instrument: vocals, skill_level: rand(1..5), genre_list: 'metal')
UserInstrument.create(user: rivers, instrument: guitar, skill_level: rand(1..5), genre_list: 'country')
UserInstrument.create(user: henry, instrument: drums, skill_level: rand(1..5), genre_list: 'blues')
UserInstrument.create(user: kenny, instrument: sax, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: tina, instrument: vocals, skill_level: rand(1..5), genre_list: 'punk')
UserInstrument.create(user: joan, instrument: guitar, skill_level: rand(1..5), genre_list: 'classical')
UserInstrument.create(user: freddy, instrument: cowbell, skill_level: rand(1..5), genre_list: 'country')
UserInstrument.create(user: axel, instrument: vocals, skill_level: rand(1..5), genre_list: 'jazz')

#jam_seshes

name = ["Rockin Out", "Jazz Sesh"]

rock = JamSesh.create(name: "Rockin Out", sesh_date: (Date.today-rand(30)))
jazz = JamSesh.create(name: "Jazz Sesh", sesh_date: (Date.today-rand(30)))
scoot = JamSesh.create(name: "Boot Scootin Boogie", sesh_date: (Date.today-rand(30)))
duet = JamSesh.create(name: "Sweet Duet", sesh_date: (Date.today-rand(30)))

#messages

Message.create(content: "Let's meetup at the Loft to have an awesome jam sesh", sender: walken, receiver: axel )
Message.create(content: "Let's meetup at my loft to have an awesome jam sesh", sender: axel, receiver: freddy )
Message.create(content: "Let's meetup at the Studio to have an awesome jam sesh", sender: freddy, receiver: rivers )
Message.create(content: "Let's meetup at the Hall to have an awesome jam sesh", sender: rivers, receiver: henry )
Message.create(content: "Let's meetup at that cool place to have an awesome jam sesh", sender: henry, receiver: kenny )
Message.create(content: "Let's meetup at DBC to have an awesome jam sesh", sender: kenny, receiver: tina )
Message.create(content: "Let's meetup to have an awesome jam sesh", sender: tina, receiver: joan )
Message.create(content: "Let's meetup at the Stage to have an awesome jam sesh", sender: joan, receiver: walken )

#user_jam_sesh

UserJamSesh.create(jam_sesh: duet, user: kenny)
UserJamSesh.create(jam_sesh: duet, user: walken)
UserJamSesh.create(jam_sesh: rock, user: kenny)
UserJamSesh.create(jam_sesh: rock, user: axel)
UserJamSesh.create(jam_sesh: jazz, user: tina)
UserJamSesh.create(jam_sesh: jazz, user: kenny)
UserJamSesh.create(jam_sesh: scoot, user: kenny)
UserJamSesh.create(jam_sesh: scoot, user: joan)


