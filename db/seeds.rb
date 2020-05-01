# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, email: Faker::Internet.email, age: Faker::Number.number(digits: 2) )
end
puts "10 utilisateurs ont été générés"

10.times do 
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
puts "10 villes ont été générées"

20.times do
    gossip = Gossip.create!(title: Faker::Lorem.word, content: Faker::Lorem.sentence)
end
puts "20 gossips ont été générés"

john = User.create
alex = User.create

pm = PrivateMessage.new

pm.sender = alex
pm.recipient = john




