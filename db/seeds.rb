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
u6 = User.create :name => 'Admin', :email => 'admin@divr.com', :password => 'chicken', :pro => true
puts "#{ User.count} users"

Scuba.destroy_all
d1 = Scuba.create :title => 'First dive in thailand', :date => DateTime.strptime("12/08/2018", "%d/%m/%Y"), :location => 'Thailand, Koh Tao', :duration => 58, :depth => 18, :gps => '10.153171, 99.798714', :buddy => 'Enzo', :notes => 'This was an awesome dive thanks to the staff'
d2 = Scuba.create :title => 'Second dive in thailand', :date => DateTime.strptime("14/08/2018", "%d/%m/%Y"), :location => 'Thailand, Koh Tao', :duration => 63, :depth => 15, :gps => '10.109155, 99.764258', :buddy => 'Enzo', :notes => 'This was an awsome dive thanks to the staff'
d3 = Scuba.create :title => 'First dive in thailand', :date => DateTime.strptime("12/08/2018", "%d/%m/%Y"), :location => 'Thailand, Koh Tao', :duration => 58, :depth => 18, :gps => '10.153171, 99.798714', :buddy => 'Jacques', :notes => 'This was an awsome dive thanks to the staff'
d4 = Scuba.create :title => 'Second dive in thailand', :date => DateTime.strptime("14/08/2018", "%d/%m/%Y"), :location => 'Thailand, Koh Tao', :duration => 63, :depth => 15, :gps => '10.109155, 99.764258', :buddy => 'Jacques', :notes => 'This was an awsome dive thanks to the staff'
d5 = Scuba.create :title => 'Great dive in gozo', :date => DateTime.strptime("13/08/2017", "%d/%m/%Y"), :location => 'Malta', :duration => 55, :depth => 23, :gps => '36.053162, 14.188029', :buddy => 'Enzo', :notes => 'Clear water, and a lot of octopus'
d6 = Scuba.create :title => 'Dive in la valette', :date => DateTime.strptime("16/08/2017", "%d/%m/%Y"), :location => 'Malta', :duration => 72, :depth => 12, :gps => '35.898131, 14.532905', :buddy => 'Enzo', :notes => 'Nice view of a shipwreck'
d7 = Scuba.create :title => 'Great dive in gozo', :date => DateTime.strptime("13/08/2017", "%d/%m/%Y"), :location => 'Malta', :duration => 55, :depth => 23, :gps => '36.053162, 14.188029', :buddy => 'Jacques', :notes => 'Clear water, and a lot of octopus'
d8 = Scuba.create :title => 'Dive in la valette', :date => DateTime.strptime("16/08/2017", "%d/%m/%Y"), :location => 'Malta', :duration => 72, :depth => 12, :gps => '35.898131, 14.532905', :buddy => 'Jacques', :notes => 'Nice view of a shipwreck'
d9 = Scuba.create :title => 'My best dive in zamami', :date => DateTime.strptime("21/08/2016", "%d/%m/%Y"), :location => 'Zamami island', :duration => 62, :depth => 18, :gps => '26.224626, 127.288940', :buddy => 'Enzo', :notes => 'A lot of turtles and a very clear water'
d10 = Scuba.create :title => 'Great dive in zamami', :date => DateTime.strptime("23/08/2016", "%d/%m/%Y"), :location => 'Zamami island', :duration => 71, :depth => 14, :gps => '26.238437, 127.286798', :buddy => 'Enzo', :notes => 'I have a lot of videos of coral reef, with clown fishes and lion fishes'
d11 = Scuba.create :title => 'My best dive in zamami', :date => DateTime.strptime("21/08/2016", "%d/%m/%Y"), :location => 'Zamami island', :duration => 62, :depth => 18, :gps => '26.224626, 127.288940', :buddy => 'Jacques', :notes => 'A lot of turtles and a very clear water'
d12 = Scuba.create :title => 'Great dive in zamami', :date => DateTime.strptime("23/08/2016", "%d/%m/%Y"), :location => 'Zamami island', :duration => 71, :depth => 14, :gps => '26.238437, 127.286798', :buddy => 'Jacques', :notes => 'I have a lot of videos of coral reef, with clown fishes and lion fishes'
puts "#{ Scuba.count} dives"

Center.destroy_all
c1 = Center.create :name => 'Big Blue Diving', :country => 'Thailand', :city => 'Koh Tao', :gps => '10.102451, 99.827721', :website => 'https://www.bigbluediving.com/'
c2 = Center.create :name => 'Plongee Malte', :country => 'Malta', :city => 'Bugibba', :gps => '35.950063, 14.411244', :website => 'https://www.plongee-malte.fr/'
c3 = Center.create :name => "Cat's Inn Kerama", :country => 'Japan', :city => 'Zamami', :gps => '26.228974, 127.302814', :website => 'http://www.catsinnkerama.com/'
c4 = Center.create :name => 'Diving Star', :country => 'Egypt', :city => 'Hurghada', :gps => '27.259477, 33.814817', :website => 'https://diving-star.com/'
c5 = Center.create :name => 'Pro Dive Cairns', :country => 'Australia', :city => 'Cairns', :gps => '-16.928179, 145.771420', :website => 'http://www.prodive-cairns.com.au/'
c6 = Center.create :name => 'Pro Dive Coogee', :country => 'Australia', :city => 'Coogee', :gps => '-33.920028, 151.255770', :website => 'https://www.prodive.com.au/'
c7 = Center.create :name => 'Turtle Divers', :country => 'Philippines', :city => 'Palawan', :gps => '11.180164, 119.387860', :website => 'http://www.turtle-divers.com/'
c8 = Center.create :name => 'Dodo Divers', :country => 'Mauritius', :city => 'Calodyne', :gps => '-20.001602, 57.645391', :website => 'http://www.dododivers.com/'
c9 = Center.create :name => 'Reef Pirates Diving', :country => 'United States', :city => 'Honolulu', :gps => '21.278772, -157.704865', :website => 'http://www.reefpirates.com/'
c10 = Center.create :name => 'Palau Dive Adventures', :country => 'Palau', :city => 'Koror', :gps => '7.343387, 134.480250', :website => 'https://palaudiveadventures.com/'
c11 = Center.create :name => 'Bahama Divers', :country => 'Bahamas', :city => 'Nassau', :gps => '25.074398, -77.317656', :website => 'https://www.bahamadivers.com/'
c12 = Center.create :name => 'Blue Water Divers', :country => 'British Virgin Islands', :city => 'British Virgin Islands', :gps => '18.400142, -64.634635', :website => 'http://www.bluewaterdiversbvi.com/'

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
u6.centers << c4 << c5 << c6 << c7 << c8 << c9 << c10 << c11 << c12

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
