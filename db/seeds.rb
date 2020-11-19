# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Seed Started"
puts "Destroying all users and pokemons"
User.destroy_all
Pokemon.destroy_all

puts "Creating Sacha"
sacha = User.create(username: "Sacha", email: "sacha@pokebnb.com", password: "123456")
puts "Creating Ondine"
ondine = User.create(username: "Ondine", email: "ondine@pokebnb.com", password: "123456")

puts "Creating Tortank"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Ftortank-removebg-preview.png')
tortank = Pokemon.new(name: "Tortank", price: 2020, abilities: "water", level: 99, address: 'Paris')
tortank.photo.attach(io: file, filename: 'tortank.png', content_type: 'image/png')
tortank.user = sacha
tortank.save

puts "Creating Rondoudou"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Frondoudou-removebg-preview.png')
rondoudou = Pokemon.new(name: "Rondoudou", price: 80, abilities: "fairy", level: 12, address: 'London')
rondoudou.photo.attach(io: file, filename: 'rondoudou.png', content_type: 'image/png')
rondoudou.user = ondine
rondoudou.save

puts "Creating Florizarre"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fflorizarre-removebg-preview.png')
florizarre = Pokemon.new(name: "Florizarre", price: 1050, abilities: "plant", level: 99, address: 'Berlin')
florizarre.photo.attach(io: file, filename: 'florizarre.png', content_type: 'image/png')
florizarre.user = ondine
florizarre.save

puts "Creating Dracaufeu"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fdracaufeu.png')
dracaufeu = Pokemon.new(name: "Dracaufeu", price: 1050, abilities: "fire", level: 100, address: 'Lille')
dracaufeu.photo.attach(io: file, filename: 'dracaufeu.png', content_type: 'image/png')
dracaufeu.user = sacha
dracaufeu.save

puts "Creating Salamèche"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2FSalam%C3%A8che_dos-removebg-preview.png')
salameche = Pokemon.new(name: "Salamèche", price: 100, abilities: "fire", level: 15, address: 'Bruxelles')
salameche.photo.attach(io: file, filename: 'salameche.png', content_type: 'image/png')
salameche.user = sacha
salameche.save

puts "Creating Pikachu"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fpikachu-removebg-preview.png')
pikachu = Pokemon.new(name: "Pikachu", price: 150, abilities: "electricity", level: 25, address: 'Köln')
pikachu.photo.attach(io: file, filename: 'pikachu.png', content_type: 'image/png')
pikachu.user = sacha
pikachu.save

puts "Creating Ponyta"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fponyta_dos.png')
ponyta = Pokemon.new(name: "Ponyta", price: 120, abilities: "fire", level: 19, address: "Düsseldorf")
ponyta.photo.attach(io: file, filename: 'ponyta.png', content_type: 'image/png')
ponyta.user = ondine
ponyta.save

puts "Creating Evoli"
file = URI.open('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fevoli_tres-removebg-preview.png')
evoli = Pokemon.new(name: "Evoli", price: 40, abilities: "normal", level: 8, address: "Strasbourg")
evoli.photo.attach(io: file, filename: 'evoli.png', content_type: 'image/png')
evoli.user = ondine
evoli.save

