# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Cleaning database'

User.destroy_all

test_user = User.create!(
  email: "test@mail.de",
  password: "123456"
)

Category.create!(name: "Nature")
Category.create!(name: "Art")
Category.create!(name: "Animals")

puts 'adding categories'

Keyword.create!(
  name: "Flower",
  category: Category.find_by(name: "Nature")
)

Keyword.create!(
  name: "Sky",
  category: Category.find_by(name: "Nature")
)

Keyword.create!(
  name: "Blue",
  category: Category.find_by(name: "Art")
)

Keyword.create!(
  name: "Paintings",
  category: Category.find_by(name: "Art")
)

Keyword.create!(
  name: "Dogs",
  category: Category.find_by(name: "Animals")
)

Keyword.create!(
  name: "Cats",
  category: Category.find_by(name: "Animals")
)



# faking users with faker gem
10.times do
  user =User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    location: Faker::Address.city,
    avatar_url: Faker::Avatar.image,
    password: "123456"
  )
end
puts "users created"

Toni = User.create(
  first_name: "Toni",
  last_name: "Steitz",
  email: "toni@mail.de",
  location: "Berlin",
  avatar_url: Faker::Avatar.image,
  password: "123456"
)
