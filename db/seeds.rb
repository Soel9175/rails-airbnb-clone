# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Item.destroy_all
User.destroy_all



puts 'Creating 5 new users...'
5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "password"
    )
  user.save!
end
puts 'Finito!'

puts 'Creating 6 new items...'

gucci_dress = Item.new(
  name: "Black Cocktail Dress",
  item_type: "Dress",
  size: "Medium",
  gender: "Female",
  available: true,
  price: 15.99,
  brand: "Gucci",
  initial_condition: "Tear in dress",
  user: User.all.sample
  )
gucci_dress.save!
puts "Gucci dress saved"

bond_tuxedo = Item.new(
  name: "James Bond's tuxedo",
  item_type: "Tuxedo",
  size: "Large",
  gender: "Male",
  available: true,
  price: 25.45,
  brand: "Armani",
  initial_condition: "Bloodstains from fighting",
  user: User.all.sample
  )
bond_tuxedo.save!
puts "Tuxedo saved"

armani_suit = Item.new(
  name: "Classic Armani Suit",
  item_type: "Suit",
  size: "XXXL",
  gender: "Male",
  available: true,
  price: 10.33,
  brand: "Armani",
  initial_condition: "Good condition",
  user: User.all.sample
  )
armani_suit.save!
puts "Suit saved"

derby_shoes = Item.new(
  name: "Derby Shoes",
  item_type: "Shoes",
  size: "10",
  gender: "Male",
  available: true,
  price: 30.22,
  brand: "Dior",
  initial_condition: "Pristine condition",
  user: User.all.sample
  )
derby_shoes.save!
puts "Shoes saved"

rolex_watch = Item.new(
  name: "Rolex Submariner Watch",
  item_type: "Watch",
  size: "Bracelet size Small",
  gender: "Unisex",
  available: true,
  price: 60.44,
  brand: "Rolex",
  initial_condition: "Like new",
  user: User.all.sample
  )
rolex_watch.save!
puts "Watch saved"

floral_dress = Item.new(
  name: "Floral pattern dress",
  item_type: "Dress",
  size: "12",
  gender: "Female",
  available: true,
  price: 20.32,
  brand: "Zara",
  initial_condition: "Good",
  user: User.all.sample
  )
puts "Items created successfully!"
