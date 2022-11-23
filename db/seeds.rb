require "open-uri"

# # # # # # # # # # #  USER DATABASE HERE # # # # # # # # # # #

puts "Cleaning up database..."
User.destroy_all
puts "Database cleaned"
puts "Creating a user"

brad = User.create!(first_name: "Brad", last_name: "Pitt", email: "bradpitt@gmail.com", password: "123456")
kim = User.create!(first_name: "Kim", last_name: "Kardashian", email: "kimkardashian@gmail.com", password: "123456")
avril = User.create!(first_name: "Avril", last_name: "Lavigne", email: "avrillavigne@gmail.com", password: "123456")
john = User.create!(first_name: "John", last_name: "Travolta", email: "johntravolta@gmail.com", password: "123456")

puts "Finished!"

# # # # # # # # # # CAR DATABASE HERE # # # # # # # # # # #

puts "Cleaning up database..."
Car.destroy_all
puts "Database cleaned"
puts "Creating a car"

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/NUNS.png")
uno = Car.new(price: "50", brand: "Fiat", model: "Uno", year: "2020", color: "Silver", category: "Compacto", user_id: brad.id)
uno.photo.attach(io: file, filename: "uno.png", content_type: "image/png")
uno.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/SANX.png")
sandero = Car.new(price: "50", brand: "Renault", model: "Sandero", year: "2020", color: "Blue", category: "Compacto", user_id: brad.id)
sandero.photo.attach(io: file, filename: "sandero.png", content_type: "image/png")
sandero.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/E208.png")
e208 = Car.new(price: "100", brand: "Pegeout", model: "E-208", year: "2020", color: "Orange", category: "Compacto", user_id: brad.id)
e208.photo.attach(io: file, filename: "e208.png", content_type: "image/png")
e208.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/HB2X.png")
hb20 = Car.new(price: "100", brand: "Hyundai", model: "HB20", year: "2020", color: "Cinza", category: "Compacto", user_id: kim.id)
hb20.photo.attach(io: file, filename: "hb20.png", content_type: "image/png")
hb20.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/POLA.png")
polo = Car.new(price: "100", brand: "VW", model: "Polo", year: "2020", color: "Silver", category: "Compacto", user_id: kim.id)
polo.photo.attach(io: file, filename: "polo.png", content_type: "image/png")
polo.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/KACR.png")
ka = Car.new(price: "100", brand: "Ford", model: "Ka", year: "2020", color: "White", category: "Compacto", user_id: kim.id)
ka.photo.attach(io: file, filename: "ka.png", content_type: "image/png")
ka.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/DUST.png")
dust = Car.new(price: "300", brand: "Renault", model: "Dust", year: "2020", color: "White", category: "Suv", user_id: avril.id)
dust.photo.attach(io: file, filename: "dust.png", content_type: "image/png")
dust.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/RENE.png")
renegade = Car.new(price: "300", brand: "Jeep", model: "Renegade", year: "2020", color: "Silver", category: "Suv", user_id: avril.id)
renegade.photo.attach(io: file, filename: "renegade.png", content_type: "image/png")
renegade.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/ECOW.png")
ecosport = Car.new(price: "300", brand: "Ford", model: "Ecosport", year: "2020", color: "White", category: "Suv", user_id: john.id)
ecosport.photo.attach(io: file, filename: "ecosport.png", content_type: "image/png")
ecosport.save!

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/CAPU.png")
captur = Car.new(price: "300", brand: "Renault", model: "Captur", year: "2020", color: "Red", category: "Suv", user_id: john.id)
captur.photo.attach(io: file, filename: "captur.png", content_type: "image/png")
captur.save!

puts "Finished!"
