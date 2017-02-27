# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'
require 'as-duration'


User.destroy_all
Request.destroy_all

breeds = []
  doc = Nokogiri::HTML(open("http://dogtime.com/dog-breeds"))
      doc.search('.post-title').each do |element|
        breeds << element.text()
      end

breeds.each do |breed|
  Breed.create({name: breed})

end

u1 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u2 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u3 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u4 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u5 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u6 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u7 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u8 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u9 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u10 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u11 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u12 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u13 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u14 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u15 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u16 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u17 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u18 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u19 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u20 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u21 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u22 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u23 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u24 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u25 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u26 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u27 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u28 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u29 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})
u30 = User.create({first_name: Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Lorem.paragraph, email: Faker::Internet.free_email, password: Faker::Internet.password(10, 20, true, true)})

d1 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u1})
d2 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u2})
d3 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(5), breed: Breed.all.sample, user: u3})
d4 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u4})
d5 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(4), breed: Breed.all.sample, user: u5})
d6 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u6})
d7 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u7})
d8 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(5), breed: Breed.all.sample, user: u8})
d9 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(6), breed: Breed.all.sample, user: u9})
d10 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u10})
d11 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u11})
d12 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u12})
d13 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u13})
d14 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u14})
d15 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u15})
d16 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(2), breed: Breed.all.sample, user: u16})
d17 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(3), breed: Breed.all.sample, user: u17})
d18 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u18})
d19 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u19})
d20 = Dog.create({name: Faker::Pokemon.name, birthdate: Faker::Date.between(1500.days.ago, 50.days.ago), description: Faker::Lorem.sentence(1), breed: Breed.all.sample, user: u20})

starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d1, user: u4, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d2, user: u27, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d7, user: u23, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d20, user: u14, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d13, user: u11, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d11, user: u9, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d9, user: u1, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d5, user: u8, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d15, user: u27, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d12, user: u30, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d16, user: u22, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
starttime = [Faker::Time.forward(23), Faker::Time.forward(23), Faker::Time.backward(14)].sample
endtime = starttime + 3600* rand(1..10)
if endtime > Time.now
  stt = ['pending', 'approuved', 'declined'].sample
else
  stt = 'pass'
end
Request.create({dog: d4, user: u21, start_datetime: starttime, end_datetime: endtime, message: Faker::Lorem.sentence, status: stt})
