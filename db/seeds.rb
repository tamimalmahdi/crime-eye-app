# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(title: 'Acadia Chess Set',
  description:
  %{Wooden Classic Wenge & Walnut Chess Set
    Hand crafted chess set perfect for a gift or casual play.},
    price: 19.99,
    image_url: 'acadia_set.jpg'
)

Product.create!(title: 'Metal Chess Set',
  description:
  %{Minimalist Chess Set
    Sleek design for the sophisticated player.},
    price: 39.99,
    image_url: 'metal_set.jpg'
)

Product.create!(title: 'Glass Chess Set',
  description:
  %{Frosted Glass Chess Set
    Elegant set designed for play.},
    price: 29.99,
    image_url: 'glass_set.jpg'
)
