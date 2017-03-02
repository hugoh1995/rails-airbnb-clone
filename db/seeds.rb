# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'
require 'as-duration'

Request.destroy_all
Dog.destroy_all
Breed.destroy_all
User.destroy_all
Address.destroy_all

breeds = []
      breeds << "default"
  doc = Nokogiri::HTML(open("http://dogtime.com/dog-breeds"))
      doc.search('.post-title').each do |element|
        breeds << element.text()
      end

breeds.each do |breed|
  Breed.create!({name: breed})
end


a1 = Address.create!({street: "2 rue Charles-Saint-Venant", city: "Lille" , country: "France"})
a2 = Address.create!({street: "3 rue Gantois", city: "Lille" , country: "France"})
a3 = Address.create!({street: "6 rue Jean-Bart", city: "Lille" , country: "France"})
a4 = Address.create!({street: "10 rue du Molinel", city: "Lille" , country: "France"})
a5 = Address.create!({street: "5 rue de Paris", city: "Lille" , country: "France"})
a6 = Address.create!({street: "1 place des Patiniers", city: "Lille" , country: "France"})
a7 = Address.create!({street: "2 rue Paul Duez", city: "Lille" , country: "France"})
a8 = Address.create!({street: "3 rue Paul-Ramadier", city: "Lille" , country: "France"})
a9 = Address.create!({street: "4 rue aux Péterinck", city: "Lille" , country: "France"})
a10 = Address.create!({street: "6 rue Pharaon de Winter", city: "Lille" , country: "France" })
a11 = Address.create!({street: "7 place Philippe Lebon", city: "Lille", country: "France"})
a12 = Address.create!({street: "8 rue Philippe de Comines", city: "Lille", country: "France"})
a13 = Address.create!({street: "2 rue de la Baignerie", city: "Lille", country: "France"})
a14 = Address.create!({street: "3 rue de Bailleul", city: "Lille", country: "France"})
a15 = Address.create!({street: "5 rue du Barbier de Maes", city: "Lille", country: "France"})
a16 = Address.create!({street: "7 rue Barthélémy-Delespaul", city: "Lille", country: "France"})
a17 = Address.create!({street: "8 rue Basse", city: "Lille", country: "France"})
a18 = Address.create!({street: "9 rue du Bastion-du-Meunier", city: "Lille", country: "France"})
a19 = Address.create!({street: "10 rue Bartholomé-Masurel", city: "Lille", country: "France"})
a20 = Address.create!({street: "11 rue Baudon", city: "Lille", country: "France"})
a21 = Address.create!({street: "12 rue Beaucourt-Decourchelle", city: "Lille", country: "France"})
a22 = Address.create!({street: "17 rue de Bellevue", city: "Lille", country: "France"})
a23 = Address.create!({street: "3 rue Benvignat", city: "Lille", country: "France"})
a24 = Address.create!({street: "8 rue de Béthune", city: "Lille", country: "France"})
a25 = Address.create!({street: "9 boulevard Bigo-Danel", city: "Lille", country: "France"})
a26 = Address.create!({street: "3 place aux Bleuets", city: "Lille", country: "France"})
a27 = Address.create!({street: "1 rue des Bonnes-Rappes", city: "Lille", country: "France"})
a28 = Address.create!({street: "2 rue des Bons-Enfants", city: "Lille", country: "France"})
a29 = Address.create!({street: "4 rue Broca", city: "Lille", country: "France"})
a30 = Address.create!({street: "2 rue Boucher-de-Perthes", city: "Lille" , country: "France" })

u1 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271142/WechatIMG6_nli0i2.jpg", address_id: a1.id})
u2 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://www.digitalphotomentor.com/photography/2015/12/overcoming-photography-fears-750px-03.jpg", address_id: a2.id})
u3 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://images4.alphacoders.com/262/262196.jpg", address_id: a3.id})
u4 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://ind5.ccio.co/KQ/mb/3W/95279348336040478ffYoa6RGc.jpg", address_id: a4.id})
u5 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://c300221.r21.cf1.rackcdn.com/12-women-people-sven-sven-photography-amp-music-1409070331_b.jpg", address_id: a5.id})
u6 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://s-media-cache-ak0.pinimg.com/736x/bd/77/97/bd7797d867ff2e38ea588af3000b95e9.jpg", address_id: a6.id})
u7 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://s-media-cache-ak0.pinimg.com/736x/1f/ae/ef/1faeef67c132e4b6c91e4f17de6b4e49.jpg", address_id: a7.id})
u8 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://www.chainimage.com/images/people-boulder-portrait-photography.jpg", address_id: a8.id})
u9 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://www.myphotocentral.com/wp-content/uploads/2015/12/A-Few-Tips-on-Better-People-Photography.jpg", address_id: a9.id})
u10 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTtNXGL6BEJqJMJwGvkonp2J1OexhMOVELc5--sSDnMuVTA5LNREQ", address_id: a10.id})
u11 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://www.digitalphotomentor.com/photography/2016/08/people-photography-mistake-12-750px-03.jpg", address_id: a11.id})
u12 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://static1.squarespace.com/static/52b8713ce4b0a80ae9bb2a8e/52b871b8e4b060add945dfcc/53847a8ce4b0ded88d2675d2/1401191055589/Street+Photography-99.jpg?format=1000w", address_id: a12.id})
u13 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://s22.postimg.org/3k4d2usup/Book1_Chicago_Fashion_Photography_By_Photographe.jpg", address_id: a13.id})
u14 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://cdn.pixabay.com/photo/2014/11/04/09/50/people-516370_960_720.jpg", address_id: a14.id})
u15 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSyDT2Y4sEbLPtCc1apBEl1g4o_U6rwkNds-HxcsL8lhVk7skUs", address_id: a15.id})
u16 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQKNsYFhEoYVIYxalQvnFgXf-Nwkei6q4ozaHTbgNaCNmuHtgtDOw", address_id: a16.id})
u17 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://s-media-cache-ak0.pinimg.com/736x/ec/30/cb/ec30cbca8bdb875bd973804baac96d6e.jpg", address_id: a17.id})
u18 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN8I3FQoEtwR5AvlL1F38wWVLlW6idmak8IXTXTt1CJo1WuZyt", address_id: a18.id})
u19 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://media.istockphoto.com/photos/happy-guy-picture-id488153142?k=6&m=488153142&s=170667a&w=0&h=FNm2sISSXsiHbepxFDIGl2M29tDOtWvZkDruq-d2nws=", address_id: a19.id})
u20 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://www.almstba.com/vb/imgcache/almstba.com_1351889786_775.jpg", address_id: a20.id})
u21 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://fthmb.tqn.com/wqxFYoESI3eDCUOdtOgtd-Mm9CE=/1280x860/filters:no_upscale():fill(FFCC00,1)/about/492446145-56b349b93df78cdfa004aeed.jpg", address_id: a21.id})
u22 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://s-media-cache-ak0.pinimg.com/236x/28/e0/20/28e0204bf0348deb45e5900d4f25ff0d.jpg", address_id: a22.id})
u23 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://s-media-cache-ak0.pinimg.com/736x/ca/e2/8f/cae28fa4a37b641eb6ac93047529b2c3.jpg", address_id: a23.id})
u24 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://www.wfuv.org/sites/default/files/VillaPalagonia.jpg", address_id: a24.id})
u25 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "http://i.huffpost.com/gen/1618592/images/o-HAPPY-PEOPLE-facebook.jpg", address_id: a25.id})
u26 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRp2i6Sbn5HZrd1GqIjHA80juiIL8lNLbU3FTAfqnOV8UpSpsAQ", address_id: a26.id})
u27 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrNREimWM34zDa8lyTnM1PJZFDRal7IEmIkd3qHYrCl3w0vIowCw", address_id: a27.id})
u28 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9MuiOkwtXVWXEt9BYszQ01psBlKk9Ps4a3Ulric3cCCguMM1B", address_id: a28.id})
u29 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCfkD9xHMOaptmsmtH88c_gDqdp5i5RCjRgQFb7DOyfKOSjx2r", address_id: a29.id})
u30 = User.create!({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true), remote_photo_url: "https://d.fastcompany.net/multisite_files/fastcompany/imagecache/inline-sidebar/inline/2015/10/3052885-inline-i-8-these-things-cant-fail.jpg", address_id: a30.id})

d1 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u1, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271925/image1_l7kxrr.jpg"})
d2 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u2, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271918/IMG_20161205_133330_n9qqno.jpg"})
d3 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(5), breed: Breed.all.sample, user: u3, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271904/IMG_17831_zjqnmf.jpg"})
d4 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u4, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271145/15224640_1239835922726536_2030944322_o_1_rgfchr.jpg"})
d5 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(4), breed: Breed.all.sample, user: u5, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271146/Slinky_2_trqytc.jpg"})
d6 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u6, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271144/15133631_1231890426854419_347885575_o_2_emd2gr.jpg"})
d7 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u7, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271144/WechatIMG9_1_fhogen.jpg"})
d8 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(5), breed: Breed.all.sample, user: u8, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271145/16196285_1293835593993235_518309093_o_1_rtcjup.jpg"})
d9 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(6), breed: Breed.all.sample, user: u9, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271137/16196497_1220541524649519_1004198320_o_2_piniey.jpg"})
d10 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u10, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488270847/dog_1_jqanzb.jpg"})
d11 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u11, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1487955686/iybz89rh3bbxu2u2xeku.jpg"})
d12 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u12, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1487946062/vbfhu2rqbajd1ngiwvxh.jpg"})
d13 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u13, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271911/IMG_20170114_114904_209_swzdyp.jpg"})
d14 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u14, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271889/16935846_1254963027874035_29218610_o_pzunpe.jpg"})
d15 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u15, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488271926/image3_hhob1j.jpg"})
d16 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u16, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488277383/IMG_0001_iecn3o.jpg"})
d17 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u17, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488277383/13659198_10154426424439802_3999486537416213619_n_h1duam.jpg"})
d18 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u18, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488277383/IMG_0005_ivdiks.jpg"})
d19 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u19, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488270844/dog_3_egpjs8.jpg"})
d20 = Dog.create!({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u20, remote_photo_url: "http://res.cloudinary.com/diuywadr3/image/upload/v1488373239/13833072_10201871939276765_1914666971_o_akxw8y.jpg"})


starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d1, user: u4, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d2, user: u27, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d7, user: u23, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d20, user: u14, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d13, user: u11, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d11, user: u9, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d9, user: u1, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d5, user: u8, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d15, user: u27, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d12, user: u30, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d16, user: u22, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create!({dog: d4, user: u21, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
