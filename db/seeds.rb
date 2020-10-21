# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hk = Game.create(title: "Hollow Knight")
me = Game.create(title: "Mass Effect")
loz = Game.create(title: "The Legend of Zelda: Breath of the Wild")

x1 = Platform.create(name: "Xbox One")
pc = Platform.create(name: "PC")
ps4 = Platform.create(name: "PS4")
nsw = Platform.create(name: "Nintendo Switch")

u = User.create(username: "jess", email: "jess@gmail.com", password: '1234')

hk.platforms << x1 << pc << ps4 << nsw
me.platforms << pc
loz.platforms << nsw

# Game.destroy_all
# User.destroy_all
# Platform.destroy_all
# OwnedGame.destroy_all
# OwnedGamesPlatform.destroy_all