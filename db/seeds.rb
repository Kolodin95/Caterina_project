# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# file = URI.open("https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg")
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')

puts "Deleting all"
Item.delete_all
User.delete_all

puts "creating item"
file1 = URI.open("https://res.cloudinary.com/dytqjls1d/image/upload/v1631284036/txnyphfbm9azc3pudm9z.jpg")
item1 = Item.new(title: "broderie 1", description: "travail au point de croix", price: 30)
item1.photo.attach(io: file1, filename: 'broderies1.jpg', content_type: 'image/jpg')
item1.save!
file2 = URI.open("https://res.cloudinary.com/dytqjls1d/image/upload/v1631283998/fmrdmdsc44wvrsgypcub.jpg")
item2 = Item.create(title: "broderie 2", description: "un taff bien cheum", price: 15)
item2.photo.attach(io: file2, filename: 'broderies2.jpg', content_type: 'image/jpg')
item2.save!
file3 = URI.open("https://res.cloudinary.com/dytqjls1d/image/upload/v1631283902/wktv8f9txssfsdmjptec.jpg")
item3 = Item.create(title: "broderie 3", description: "prénom brodé", price: 45)
item3.photo.attach(io: file3, filename: 'broderies3.jpg', content_type: 'image/jpg')
item3.save!


puts "creating user"
user1 = User.create(email: 'kt@gmail.com', password: "1234567")  
user1.save!
user2 = User.create(email: 'jean@gmail.com', password: "1234567")
user2.save!
user3 = User.create(email: 'lol@gmail.com', password: "1234567")
user3.save!

# , photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )

# , photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )
# , photo: "https://ae01.alicdn.com/kf/H4d5222230e9d4cd88635579fbbb6c514t/Kit-de-d-marreur-de-broderie-estampill-e-pour-d-butant-bricolage-avec-motifs-de-fleurs.jpg_q50.jpg" )