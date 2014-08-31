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

christopher = User.create(first_name: "Christopher", last_name: "Walken", email: "needmore@cowbell.org", password: "testing", password_confirmation: "testing", img_url: 'walken.jpg', description: 'I got a fevah, and the only prescription...is more cowbell', neighborhood: bucktown)

axel = User.create(first_name: "Axel", last_name: "Rose", email: "sweetchild@omine.org", password: "testing", password_confirmation: "testing", img_url: 'axl_rose.jpeg', description: 'Nanananananannana neeee neeeee', neighborhood: bucktown)

freddy = User.create(first_name: "Freddy", last_name: "Mercury", email: "moustache@queen.org", password: "testing", password_confirmation: "testing", img_url: 'mercury.png', description: 'People on the streets. Ba-da-dee-dop-dop', neighborhood: bucktown)

rivers = User.create(first_name: "Rivers", last_name: "Cuomo", email: "rivers@weezer.org", password: "testing", password_confirmation: "testing", img_url: 'cuomo.jpg', description: 'Beverly Hills, thats where I want to be', neighborhood: hyde)

henry = User.create(first_name: "Henry", last_name: "Rollins", email: "henry@blackflag.org", password: "testing", password_confirmation: "testing", img_url: 'rollins.jpg', description: 'Whats the matter man? Is the time not right?', neighborhood: river)

kenny = User.create(first_name: "Kenny", last_name: "G", email: "kenny@kenny.org", password: "testing", password_confirmation: "testing", image: File.open(File.join(Rails.root, "app/assets/images/kenny_g.jpg")), description: 'Awesome musician looking for other awesome musicians.', neighborhood: lakeview)

tina = User.create(first_name: "Tina", last_name: "Turner", email: "simplytheest@tina.org", password: "testing", password_confirmation: "testing", img_url: 'turner.jpg', description: 'Whats love got to do, got to do with it?', neighborhood: south)

beyonce = User.create(first_name: "Beyonce", last_name: "Knowles", email: "ifulikeit@ringonit.org", password: "testing", password_confirmation: "testing", img_url: 'beyonce.jpg', description: 'You better put a ring on it.', neighborhood_id: 6)

joan = User.create(first_name: "Joan", last_name: "Jett", email: "joan@runaways.org", password: "testing", password_confirmation: "testing", img_url: 'jett.jpg', description: 'Put another dime in the jukebox, baby.', neighborhood_id: 6)

adele = User.create(first_name: "Adele", last_name: " ", email: "adele@iwin.org", password: "testing", password_confirmation: "testing", img_url: 'adele.jpg', description: 'We could have had it allllllllllllll.', neighborhood_id: 6)

flea = User.create(first_name: "Flea", last_name: " ", email: "joan@runaways.org", password: "testing", password_confirmation: "testing", img_url: 'flea.jpg', description: 'With the birds I share this lonely view.', neighborhood_id: 5)

eric = User.create(first_name: "Eric", last_name: "Clapton", email: "eric@dominoes.com", password: "testing", password_confirmation: "testing", img_url: 'clapton.jpg', description: 'You look wonderful tonight', neighborhood_id: 5)

aretha = User.create(first_name: "Aretha", last_name: "Franklin", email: "thequeen@ofsoul.org", password: "testing", password_confirmation: "testing", img_url: 'aretha.jpg', description: 'Sock it to me. Sock it to me. Sock it to me. Sock it to me. Sock it to me. Sock it to me. Sock it to me.', neighborhood_id: 5)

neil = User.create(first_name: "Neil", last_name: "Peart", email: "npeart@rush.org", password: "testing", password_confirmation: "testing", img_url: 'neilpeart.jpg',description: 'Thats why the call me, they call me the workin man', neighborhood_id: 4)

bono = User.create(first_name: "Bono", last_name: " ", email: "bono@u2.org", password: "testing", password_confirmation: "testing", img_url: 'bono.jpg',description: 'I still havent found what Im looking for.', neighborhood_id: 4)

idina = User.create(first_name: "Idina", last_name: "Menzel", email: "idina@frozen.org", password: "testing", password_confirmation: "testing", img_url: 'idina.jpg',description: 'Let it goooooooooooooooooooooooooooooooooooooo', neighborhood_id: 4)

dr = User.create(first_name: "Dr.", last_name: "Dre", email: "dre@nwa.org", password: "testing", password_confirmation: "testing", img_url: 'dre.jpg',description: 'Keep their heads ringin', neighborhood_id: 3)

duke = User.create(first_name: "Duke", last_name: "Greene", email: "duke@dbc.com", password: "testing", password_confirmation: "testing", img_url: 'duke.jpg',description: 'That was my nickname in highschool', neighborhood_id: 1)

wynton = User.create(first_name: "Wynton", last_name: "Marsalis", email: "winton@jazz.org", password: "testing", password_confirmation: "testing", img_url: 'wyntonmarsalis.jpg',description: 'Invest yourself in everything you do. Theres fun in being serious.', neighborhood_id: 2)

lorde = User.create(first_name: "Lorde", last_name: " ", email: "lorde@royals.org", password: "testing", password_confirmation: "testing", img_url: 'lorde.jpg',description: 'We dont care, we arent caught up in your love affair.', neighborhood_id: 3)

 #Frank Sinatra
 #Skrillex

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

UserInstrument.create(user: christopher, instrument: cowbell, skill_level: rand(1..5), genre_list: 'punk')
UserInstrument.create(user: axel, instrument: guitar, skill_level: rand(1..5), genre_list: 'metal')
UserInstrument.create(user: freddy, instrument: vocals, skill_level: rand(1..5), genre_list: 'metal')
UserInstrument.create(user: rivers, instrument: guitar, skill_level: rand(1..5), genre_list: 'country')
UserInstrument.create(user: henry, instrument: drums, skill_level: rand(1..5), genre_list: 'blues')
UserInstrument.create(user: kenny, instrument: sax, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: tina, instrument: vocals, skill_level: rand(1..5), genre_list: 'punk')
UserInstrument.create(user: joan, instrument: guitar, skill_level: rand(1..5), genre_list: 'classical')
UserInstrument.create(user: adele, instrument: cowbell, skill_level: rand(1..5), genre_list: 'country')
UserInstrument.create(user: flea, instrument: drums, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: eric, instrument: vocals, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: aretha, instrument: sax, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: neil, instrument: vocals, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: bono, instrument: cowbell, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: idina, instrument: vocals, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: dr, instrument: cowbell, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: duke, instrument: sax, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: wynton, instrument: vocals, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: lorde, instrument: guitar, skill_level: rand(1..5), genre_list: 'jazz')
UserInstrument.create(user: beyonce, instrument: cowbell, skill_level: rand(1..5), genre_list: 'jazz')

#jam_seshes

name = ["Rockin Out", "Jazz Sesh"]

rock = JamSesh.create(name: "Rockin Out", sesh_date: (Date.today-rand(30)))
jazz = JamSesh.create(name: "Jazz Sesh", sesh_date: (Date.today-rand(30)))
scoot = JamSesh.create(name: "Boot Scootin Boogie", sesh_date: (Date.today-rand(30)))
duet = JamSesh.create(name: "Sweet Duet", sesh_date: (Date.today-rand(30)))

#messages

Message.create(content: "Let's meetup at the Loft to have an awesome jam sesh", sender: christopher, receiver: axel )
Message.create(content: "Let's meetup at my loft to have an awesome jam sesh", sender: axel, receiver: freddy )
Message.create(content: "Let's meetup at the Studio to have an awesome jam sesh", sender: freddy, receiver: rivers )
Message.create(content: "Let's meetup at the Hall to have an awesome jam sesh", sender: rivers, receiver: henry )
Message.create(content: "Let's meetup at that cool place to have an awesome jam sesh", sender: henry, receiver: kenny )
Message.create(content: "Let's meetup at DBC to have an awesome jam sesh", sender: kenny, receiver: tina )
Message.create(content: "Let's meetup to have an awesome jam sesh", sender: tina, receiver: joan )
Message.create(content: "Let's meetup at the Stage to have an awesome jam sesh", sender: joan, receiver: christopher )

#user_jam_sesh

UserJamSesh.create(jam_sesh: duet, user: kenny)
UserJamSesh.create(jam_sesh: duet, user: christopher)
UserJamSesh.create(jam_sesh: rock, user: kenny)
UserJamSesh.create(jam_sesh: rock, user: axel)
UserJamSesh.create(jam_sesh: jazz, user: tina)
UserJamSesh.create(jam_sesh: jazz, user: kenny)
UserJamSesh.create(jam_sesh: scoot, user: kenny)
UserJamSesh.create(jam_sesh: scoot, user: joan)




