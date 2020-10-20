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

GamesPlatform.create(game_id: hk.id, platform_id: x1.id)
GamesPlatform.create(game_id: hk.id, platform_id: pc.id)
GamesPlatform.create(game_id: hk.id, platform_id: ps4.id)
GamesPlatform.create(game_id: hk.id, platform_id: nsw.id)

GamesPlatform.create(game_id: me.id, platform_id: pc.id)

GamesPlatform.create(game_id: loz.id, platform_id: nsw.id)

