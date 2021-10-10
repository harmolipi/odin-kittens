# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.destroy_all

Kitten.create([
  {
    name: 'Mumford',
    age: 2,
    cuteness: 9,
    softness: 7
  },
  {
    name: 'Cosmo',
    age: 46,
    cuteness: 8,
    softness: 2
  }
])
