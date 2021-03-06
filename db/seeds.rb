# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  Restaurant.create!(address: Faker::GameOfThrones.city, name: Faker::Company.name, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  2.times do
    Review.create!(content: Faker::Hipster.sentence, rating: (0..5).to_a.sample, restaurant_id: Restaurant.last.id)
  end
end
