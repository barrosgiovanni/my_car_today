require "open-uri"

puts "Cleaning up database..."
Car.destroy_all
puts "Database cleaned"

puts "Creating a car"

car = Car.new(price: "50", brand: "Fiat", model: "Uno", year: "2020", color: "Silver", category: "Compacto")
file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/NUNS.png")
car.photos.attach(io: file, filename: "uno.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/SANX.png")
car = Car.new(price: "50", brand: "Renault", model: "Sandero", year: "2020", color: "Blue", category: "Compacto")
car.photos.attach(io: file, filename: "sandero.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/E208.png")
car = Car.new(price: "100", brand: "Pegeout", model: "E-208", year: "2020", color: "Orange", category: "Compacto")
car.photos.attach(io: file, filename: "e208.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/HB2X.png")
car = Car.new(price: "100", brand: "Hyundai", model: "HB20", year: "2020", color: "Cinza", category: "Compacto")
car.photos.attach(io: file, filename: "hb20.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/POLA.png")
car = Car.new(price: "100", brand: "VW", model: "Polo", year: "2020", color: "Silver", category: "Compacto")
car.photos.attach(io: file, filename: "polo.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/KACR.png")
car = Car.new(price: "100", brand: "Ford", model: "Ka", year: "2020", color: "White", category: "Compacto")
car.photos.attach(io: file, filename: "ka.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/DUST.png")
car = Car.new(price: "300", brand: "Renault", model: "Dust", year: "2020", color: "White", category: "Suv")
car.photos.attach(io: file, filename: "dust.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/RENE.png")
car = Car.new(price: "300", brand: "Jeep", model: "Renegade", year: "2020", color: "Silver", category: "Suv")
car.photos.attach(io: file, filename: "renegade.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/ECOW.png")
car = Car.new(price: "300", brand: "Ford", model: "Ecosport", year: "2020", color: "White", category: "Suv")
car.photos.attach(io: file, filename: "ecosport.png", content_type: "image/png")
car.save

file = URI.open("https://www.localiza.com/brasil-site/geral/Frota/CAPU.png")
car = Car.new(price: "300", brand: "Renault", model: "Captur", year: "2020", color: "Red", category: "Suv")
car.photos.attach(io: file, filename: "captur.png", content_type: "image/png")
car.save

puts "Finished!"
