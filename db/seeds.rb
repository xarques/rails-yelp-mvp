# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
      # t.string :name
      # t.string :address
      # t.string :phone_number
      # t.string :category
      # ["chinese", "italian", "japanese", "french", "belgian"] }
      # t.text :content
      # t.integer :rating
      # t.references :restaurant, foreign_key: true
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '0345678632',
    category:        "chinese"
  },
  {
    name:         'Blend',
    address:      '15 Rue de Charonne, 75011 Paris',
    phone_number:  '0143567897',
    category:       "italian"
  },
  {
    name:         'Septime',
    address:      '80 Rue de Charonne, 75011 Paris',
    phone_number:  '01435678765',
    category:       "japanese"
  },
  {
    name:         'KB CaféShop',
    address:      '53 Avenue Trudaine, 75009 Paris',
    phone_number:  '0234587654',
    category:       "french"
  },
  {
    name:         'La compagnie des crèpes',
    address:      '30 cour Saint Emilion, 75012 Paris',
    phone_number:  '0148764323',
    category:       "belgian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Creating reviews...'
reviews_attributes = [
  {
    content: 'Very good food',
    rating: 5,
    restaurant_id: 1
  },
  {
    content: 'Good food',
    rating: 4,
    restaurant_id: 2
  },
  {
    content: 'Bof',
    rating: 2,
    restaurant_id: 3
  },
  {
    content: 'A eviter',
    rating: 1,
    restaurant_id: 4
  },
  {
    content: 'Very bad food',
    rating: 0,
    restaurant_id: 5
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
