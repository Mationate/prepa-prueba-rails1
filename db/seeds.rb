# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
10.times do |i|
  Product.create(
    name: "producto #{i}",
    price: rand(500..1500),
    description: "descripción para el producto #{i}",
    image: "https://loremflickr.com/300/200"
  )
end