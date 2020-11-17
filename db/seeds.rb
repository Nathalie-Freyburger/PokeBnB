# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pokemon.destroy_all

sacha = User.create(username: "Sacha", email: "sacha@pokebnb.com", password: "123456")
ondine = User.create(username: "Ondine", email: "ondine@pokebnb.com", password: "123456")

dracaufeu = Pokemon.new(name: "Dracaufeu", price: 1050, abilities: "fire", level: 100)
dracaufeu.user = sacha
dracaufeu.save
salameche = Pokemon.new(name: "Salamèche", price: 100, abilities: "fire", level: 15)
salameche.user = sacha
salameche.save
pikachu = Pokemon.new(name: "Pikachu", price: 150, abilities: "electricity", level: 25)
pikachu.user = sacha
pikachu.save
tortank = Pokemon.new(name: "Tortank", price: 2020, abilities: "water", level: 99)
tortank.user = sacha
tortank.save
rondoudou = Pokemon.new(name: "Rondoudou", price: 80, abilities: "fairy", level: 12)
rondoudou.user = ondine
rondoudou.save
ponyta = Pokemon.new(name: "Ponyta", price: 120, abilities: "fire", level: 19)
ponyta.user = ondine
ponyta.save
evoli = Pokemon.new(name: "Evoli", price: 40, abilities: "normal", level: 8)
evoli.user = ondine
evoli.save
florizarre = Pokemon.new(name: "Florizarre", price: 1050, abilities: "plant", level: 99)
florizarre.user = ondine
florizarre.save
