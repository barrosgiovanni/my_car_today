# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars = Car.create([
  { price: "50", brand: "Fiat",  model: "Uno", year: "2020", color: "Silver", category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/NUNS.png
  { price: "50", brand: "Renault", model: "Sandero", year: "2020", color: "Blue", category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/SANX.png
  { price: "100" }, { brand: "Pegeout" }, { model: "E-208" }, { year: "2020" }, { color: "Orange" }, { category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/E208.png
  { price: "100" }, { brand: "Hyundai" }, { model: "HB20" }, { year: "2020" }, { color: "Cinza" }, { category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/HB2X.png
  { price: "100" }, { brand: "VW" }, { model: "Polo" }, { year: "2020" }, { color: "Silver" }, { category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/POLA.png
  { price: "100" }, { brand: "Ford" }, { model: "Ka" }, { year: "2020" }, { color: "White" }, { category: "Compacto" }, # https://www.localiza.com/brasil-site/geral/Frota/KACR.png
  { price: "300", brand: "Renault", model: "Dust", year: "2020", color: "White", category: "Suv" }, # https://www.localiza.com/brasil-site/geral/Frota/DUST.png
  { price: "300", brand: "Jeep", model: "Renegade", year: "2020", color: "Silver", category: "Suv" }, # https://www.localiza.com/brasil-site/geral/Frota/RENE.png
  { price: "300", brand: "Ford", model: "Ecosport", year: "2020", color: "White", category: "Suv" }, # https://www.localiza.com/brasil-site/geral/Frota/ECOW.png
  { price: "300", brand: "Renault", model: "Captur", year: "2020", color: "Red", category: "Suv" } # https://www.localiza.com/brasil-site/geral/Frota/CAPU.png
])
