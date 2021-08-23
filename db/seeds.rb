# This is where you can create initial data for your app.
require 'faker'

puts 'Adding initial Restaurant data'
gk = Restaurant.new(name: 'Galata Kitchen', address: 'Galata, Istanbul', rating: 5)
gk.save!

bh = Restaurant.new(name: 'Börek House', address: 'Istanbul')
bh.save!

mcd = Restaurant.new(name: 'McDonald\'s', address: 'New York')
mcd.save!
puts 'Done'

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
