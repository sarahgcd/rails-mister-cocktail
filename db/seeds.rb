# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

response = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read

file = JSON.parse(response)
list = file["drinks"]
list.each do |item|
  ingredient = item["strIngredient1"]
  Ingredient.create(name: ingredient)
end
