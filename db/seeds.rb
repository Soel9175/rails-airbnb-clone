require "open-uri"
puts "Cleaning database..."
Booking.destroy_all
Item.all.each do |item|
  item.photo.purge
end
Item.destroy_all
User.destroy_all



puts 'Creating 5 new users...'
5.times do |i|
  user = User.new(
    email: "email#{i}@gmail.com",
    password: "password"
    )
  user.save!
end
puts 'Finito!'

puts 'Creating 6 new items...'

file = URI.open('https://d1v6u7haqkchb4.cloudfront.net/optimise/xlarge_SI6134__3_.webp?quality=100&signature=84c7e523bf38549a82b231c7773af0010dd8c5b156b3a7ea382b670eb59a3a31&src=https%3A%2F%2Fbec2df9eb90bb6604cfc-660d71a7a33bc04488a7427f5fddcedf.ssl.cf3.rackcdn.com%2Fuploads%2Fproduct_image%2Fphoto%2F5d52cf6766f89162a6e903cc%2Fxlarge_SI6134__3_.jpg&version=20200907')
gucci_dress = Item.new(
  name: "Black Cocktail Dress",
  item_type: "Dress",
  size: "Medium",
  gender: "Female",
  available: true,
  price: 15.99,
  brand: "Gucci",
  initial_condition: "Tear in dress",
  user: User.first
  )
gucci_dress.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
gucci_dress.save!
puts "Gucci dress saved"


file = URI.open('https://asset1.cxnmarksandspencer.com/is/image/mands/Black-Slim-Fit-Dinner-Jacket-1/SD_03_T15_8021D_Y0_X_EC_0?$PDP_IMAGEGRID_1_LG$')
bond_tuxedo = Item.new(
  name: "James Bond's Tuxedo",
  item_type: "Tuxedo",
  size: "Large",
  gender: "Male",
  available: true,
  price: 25.45,
  brand: "Armani",
  initial_condition: "Bloodstains from fighting",
  user: User.first
  )

bond_tuxedo.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bond_tuxedo.save
puts "Tuxedo Pressed"

file = URI.open('https://images.selfridges.com/is/image/selfridges/R03683450_BLACK_maxymM?$PDP_M_ZOOM$&defaultImage=R03683450_BLACK_M')
armani_suit = Item.new(
  name: "Classic Armani Suit",
  item_type: "Suit",
  size: "XXXL",
  gender: "Male",
  available: true,
  price: 10.33,
  brand: "Armani",
  initial_condition: "Good condition",
  user: User.first
  )
armani_suit.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
armani_suit.save!
puts "Suit Cleaned"

file = URI.open('https://www.samuel-windsor.co.uk/images/products/zoom/z-BV2409.jpg')
derby_shoes = Item.new(
  name: "Derby Shoes",
  item_type: "Shoes",
  size: "10",
  gender: "Male",
  available: true,
  price: 30.22,
  brand: "Dior",
  initial_condition: "Pristine condition",
  user: User.find(2)
  )
derby_shoes.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
derby_shoes.save!
puts "Shoes Polished"

file = URI.open('https://s.yimg.com/aah/movadobaby/rolex-submariner-116610-54.jpg')
rolex_watch = Item.new(
  name: "Rolex Submariner Watch",
  item_type: "Watch",
  size: "Bracelet size Small",
  gender: "Unisex",
  available: true,
  price: 60.44,
  brand: "Rolex",
  initial_condition: "Like new",
  user: User.find(2)
  )
rolex_watch.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
rolex_watch.save!
puts "Watch Syncronised"

file = URI.open('https://is4.revolveassets.com/images/p4/n/z/BENE-WD89_V1.jpg')
floral_dress = Item.new(
  name: "Floral Pattern Dress",
  item_type: "Dress",
  size: "12",
  gender: "Female",
  available: true,
  price: 20.32,
  brand: "Zara",
  initial_condition: "Good",
  user: User.find(2)
  )
floral_dress.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
floral_dress.save!
puts "Flower Dress saved"

puts "The Database Is Looking FABULOUS 🌠⭐"
