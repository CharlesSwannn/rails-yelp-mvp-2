require 'faker'

puts "------------------------------"
puts "Destroying previous seeds"

Restaurant.destroy_all
puts "------------------------------"

puts "Creating new seeds"
types_of_restaurants = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: types_of_restaurants.sample
  )
  puts "Restaurant with id nr #{restaurant.id} was created!"
end

puts "------------------------------"
puts "All done!"
