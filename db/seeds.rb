# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create! id: 1, name: 'Recliner Chair', price: '265', description: 'A great chair to relax.', release_date: '1/2/2019', category_id: 1

Category.delete_all
Category.create! id: 1, name: 'Furniture'
Category.create! id: 2, name: 'Computers and Electronics'
Category.create! id: 3, name: 'Clothing'
Category.create! id: 4, name: 'Food'

