# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Instruments

Instrument.create(name: "Vocals", icon: 'microphone-icon.png')
Instrument.create(name: "Guitar", icon: 'guitar-icon.png')
Instrument.create(name: "Saxophone", icon: 'sax-icon.png')
Instrument.create(name: "Drums", icon: 'drum-icon.png')
Instrument.create(name: "Cowbell", icon: 'cowbell-icon.png')

# Neighborhoods

Neighborhood.create(name: 'Rogers Park')
Neighborhood.create(name: 'Bucktown')
Neighborhood.create(name: 'South Loop')
Neighborhood.create(name: 'Lakeview')
Neighborhood.create(name: 'Hyde Park')
Neighborhood.create(name: 'River North')

User.create(first_name: "Christopher",
            last_name: "Walken",
            email: "needmore@cowbell.org",
            password: "testing",
            password_confirmation: "testing",
            img_url: 'walken.jpg',
            description: 'I got a fevah, and the only prescription...is more cowbell',
            neighborhood_id: 2)

User.create(first_name: "Axel", last_name: "Rose", email: "sweetchild@omine.org", password: "testing", password_confirmation: "testing", img_url: 'axl_rose.jpeg', description: 'Nanananananannana neeee neeeee', neighborhood_id: 2)

User.create(first_name: "Freddy", last_name: "Mercury", email: "moustache@queen.org", password: "testing", password_confirmation: "testing", img_url: 'mercury.png', description: 'People on the streets. Ba-da-dee-dop-dop', neighborhood_id: 1)

User.create(first_name: "Rivers", last_name: "Cuomo", email: "rivers@weezer.org", password: "testing", password_confirmation: "testing", img_url: 'cuomo.jpg', description: 'Beverly Hills, thats where I want to be', neighborhood_id: 2)

User.create(first_name: "Henry", last_name: "Rollins", email: "henry@blackflag.org", password: "testing", password_confirmation: "testing", img_url: 'rollins.jpg', description: 'Whats the matter man? Is the time not right?', neighborhood_id: 3)

User.create(first_name: "Kenny", last_name: "G", email: "thebest@clarinet.org", password: "testing", password_confirmation: "testing", img_url: 'kenny_g_2.jpg', description: 'Awesome musician looking for other awesome musicians.', neighborhood_id: 4)

User.create(first_name: "Tina", last_name: "Turner", email: "simplytheest@tina.org", password: "testing", password_confirmation: "testing", img_url: 'turner.jpg', description: 'Whats love got to do, got to do with it?', neighborhood_id: 1)

User.create(first_name: "Joan", last_name: "Jett", email: "joan@runaways.org", password: "testing", password_confirmation: "testing", img_url: 'jett.jpg', neighborhood_id: 1)


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

10.times do
  UserInstrument.create(user_id: rand(1..7), instrument_id: rand(1..5), skill_level: rand(1..5), genre_list: list.sample)
end




