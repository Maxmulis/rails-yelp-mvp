# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating some restaurants'
Restaurant.destroy_all

5.times do
  r = Restaurant.create!({ address: Faker::Address.city,
                           name: Faker::FunnyName.two_word_name,
                           phone_number: Faker::PhoneNumber.phone_number,
                           category: ["chinese", "italian", "japanese", "french", "belgian"].sample })
  puts "Created restaurant with ID: #{r.id}"
end

puts "Created #{Restaurant.count} new restaurants."
