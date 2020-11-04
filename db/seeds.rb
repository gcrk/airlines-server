# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airplane.destroy_all
a1 = Airplane.create :name => 'Airbus A380', :rows => 6, :columns => 6
a2 = Airplane.create :name => 'Boeing 777', :rows => 6, :columns => 6
puts "#{ Airplane.count} Airplanes"

Flight.destroy_all
f1 = Flight.create :flight_number => 412, :origin => 'SYD', :destination => 'MEL', :date => DateTime.strptime("12/11/2020", "%d/%m/%Y")
f2 = Flight.create :flight_number => 703, :origin => 'SYD', :destination => 'KIX', :date => DateTime.strptime("13/11/2020", "%d/%m/%Y")
f3 = Flight.create :flight_number => 212, :origin => 'SYD', :destination => 'PER', :date => DateTime.strptime("14/11/2020", "%d/%m/%Y")
f4 = Flight.create :flight_number => 813, :origin => 'SYD', :destination => 'BNE', :date => DateTime.strptime("15/11/2020", "%d/%m/%Y")
puts "#{ Flight.count} Flights"

Reservation.destroy_all
r1 = Reservation.create :seat => 12
r2 = Reservation.create :seat => 14
r3 = Reservation.create :seat => 7
r4 = Reservation.create :seat => 21
r5 = Reservation.create :seat => 17
r6 = Reservation.create :seat => 15
r7 = Reservation.create :seat => 3
r8 = Reservation.create :seat => 6
puts "#{ Reservation.count} Reservations"

User.destroy_all
u1 = User.create :name => 'Groucho'
u2 = User.create :name => 'Harpo'
u3 = User.create :name => 'Chicco'
u4 = User.create :name => 'Zeppo'
puts "#{ User.count} Users"

puts "users and reservations"
u1.reservations << r1 << r5
u2.reservations << r2 << r6
u3.reservations << r3 << r7
u4.reservations << r4 << r8
puts "flights and reservations"
f1.reservations << r1 << r6
f2.reservations << r2 << r7
f3.reservations << r3 << r8
f4.reservations << r4 << r5
puts "airplanes and flights"
a1.flights << f1 << f3
a2.flights << f2 << f4
