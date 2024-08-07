require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address ,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
end

puts "Finished!"
