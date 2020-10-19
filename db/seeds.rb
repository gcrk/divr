# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Jacques Mayol', :email => 'jm@divr.com', :password => 'chicken', :pro => false
u2 = User.create :name => 'Enzo Molinari', :email => 'em@divr.com', :password => 'chicken', :pro => false
u3 = User.create :name => 'Paddy', :email => 'paddy@divr.com', :password => 'chicken', :pro => true
u4 = User.create :name => 'Eugene', :email => 'eugene@divr.com', :password => 'chicken', :pro => true
u5 = User.create :name => 'Nobu', :email => 'nobu@divr.com', :password => 'chicken', :pro => true
puts "#{ User.count} users"

Scuba.destroy_all
d1 = Scuba.create :title => 'First dive in thailand', :location => 'Thailand, Koh Tao', :duration => 58, :depth => 18, :buddy => 'Enzo', :notes => 'This was an awesome dive thanks to the staff'
d2 = Scuba.create :title => 'Second dive in thailand', :location => 'Thailand, Koh Tao', :duration => 63, :depth => 15, :buddy => 'Enzo', :notes => 'This was an awsome dive thanks to the staff'
d3 = Scuba.create :title => 'First dive in thailand', :location => 'Thailand, Koh Tao', :duration => 58, :depth => 18, :buddy => 'Jacques', :notes => 'This was an awsome dive thanks to the staff'
d4 = Scuba.create :title => 'Second dive in thailand', :location => 'Thailand, Koh Tao', :duration => 63, :depth => 15, :buddy => 'Jacques', :notes => 'This was an awsome dive thanks to the staff'
d5 = Scuba.create :title => 'Great dive in gozo', :location => 'Malta', :duration => 55, :depth => 23, :buddy => 'Enzo', :notes => 'Clear water, and a lot of octopus'
d6 = Scuba.create :title => 'Dive in la valette', :location => 'Malta', :duration => 72, :depth => 12, :buddy => 'Enzo', :notes => 'Nice view of a shipwreck'
d7 = Scuba.create :title => 'Great dive in gozo', :location => 'Malta', :duration => 55, :depth => 23, :buddy => 'Jacques', :notes => 'Clear water, and a lot of octopus'
d8 = Scuba.create :title => 'Dive in la valette', :location => 'Malta', :duration => 72, :depth => 12, :buddy => 'Jacques', :notes => 'Nice view of a shipwreck'
d9 = Scuba.create :title => 'My best dive in zamami', :location => 'Zamami island', :duration => 62, :depth => 18, :buddy => 'Enzo', :notes => 'A lot of turtles and a very clear water'
d10 = Scuba.create :title => 'Great dive in zamami', :location => 'Zamami island', :duration => 71, :depth => 14, :buddy => 'Enzo', :notes => 'I have a lot of videos of coral reef, with clown fishes and lion fishes'
d11 = Scuba.create :title => 'My best dive in zamami', :location => 'Zamami island', :duration => 62, :depth => 18, :buddy => 'Jacques', :notes => 'A lot of turtles and a very clear water'
d12 = Scuba.create :title => 'Great dive in zamami', :location => 'Zamami island', :duration => 71, :depth => 14, :buddy => 'Jacques', :notes => 'I have a lot of videos of coral reef, with clown fishes and lion fishes'
puts "#{ Scuba.count} dives"

Center.destroy_all
c1 = Center.create :name => 'Big Blue Diving', :country => 'Thailand', :city => 'Koh Tao', :website => 'https://www.bigbluediving.com/'
c2 = Center.create :name => 'Plongee Malte', :country => 'Malta', :city => 'Bugibba', :website => 'https://www.plongee-malte.fr/'
c3 = Center.create :name => "Cat's Inn Kerama", :country => 'Japan', :city => 'Zamami', :website => 'http://www.catsinnkerama.com/'
puts "#{ Center.count} dive centers"

Video.destroy_all
v1 = Video.create :name => 'Chumphon Pinnacle', :link => 'https://www.youtube.com/watch?v=kI2jL16hBjI'
v2 = Video.create :name => 'Sail Rock', :link => 'https://www.youtube.com/watch?v=NBdPqNJtGGE'
v3 = Video.create :name => 'Gozo - Blue Hole', :link => 'https://www.youtube.com/watch?v=sddJVnkghL0'
v4 = Video.create :name => 'La valette Shipwreck', :link => 'https://www.youtube.com/watch?v=EnerC4YTB68'
v5 = Video.create :name => 'Turtles in Zamami', :link => 'https://www.youtube.com/watch?v=8Zvu57BEx_k'
v6 = Video.create :name => 'Coral reef Zamami', :link => 'https://www.youtube.com/watch?v=Ts7gcTU5DSc'
puts "#{ Video.count} videos"

puts "dives and users"
u1.scubas << d1 << d2 << d5 << d6 << d9 << d10
u2.scubas << d3 << d4 << d7 << d8 << d11 << d12
#
puts "dive centers and users"
u3.centers << c1
u4.centers << c2
u5.centers << c3


puts "videos and users"

u1.videos << v1 << v3 << v5
u2.videos << v2 << v4 << v6
#
puts "centers and videos"

c1.videos << v1 << v2
c2.videos << v3 << v4
c3.videos << v5 << v6
#
puts "dives and videos"
d1.videos << v1
d4.videos << v2
d5.videos << v3
d8.videos << v4
d9.videos << v5
d12.videos << v6
# v1.scuba << d1
# v2.scuba << d4
# v3.scuba << d5
# v4.scuba << d8
# v5.scuba << d9
# v6.scuba << d12
