# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Deleting all"
User.delete_all
Item.delete_all


puts "creating user"
user1 = User.create(email: 'kt@gmail.com', password: "1234567", admin: true)  
user1.save!
user2 = User.create(email: 'jean@gmail.com', password: "1234567", admin: true)
user2.save!
user3 = User.create(email: 'lol@gmail.com', password: "1234567")
user3.save!

puts "creating item"
item1 = Item.create(title: "broderie 1", description: "travail au point de croix", price: 30, photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )
item1.save!
item2 = Item.create(title: "broderie 2", description: "un taff bien cheum", price: 15, photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )
item2.save!
item3 = Item.create(title: "broderie 3", description: "prénom brodé", price: 45, photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )
item3.save!

