# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Category.destroy_all
Address.destroy_all
Report.destroy_all

# Create categories
categories = Category.create([
  { category: 'Iluminação Pública' },
  { category: 'Pavimentação' },
  { category: 'Saneamento' },
  { category: 'Segurança' }
])

# Create addresses
addresses = Address.create([
  { cep: '12345-678', street: 'Rua A', neighbhood: 'Bairro A', city: 'Cidade A', number: '100' },
  { cep: '23456-789', street: 'Rua B', neighbhood: 'Bairro B', city: 'Cidade B', number: '200' },
  { cep: '34567-890', street: 'Rua C', neighbhood: 'Bairro C', city: 'Cidade C', number: '300' }
])

# Create reports and associate them with addresses
Report.create([
  { title: 'Lâmpada queimada', description: 'Lâmpada do poste está queimada.', category: categories[0], address: addresses[0] },
  { title: 'Buraco na rua', description: 'Há um buraco grande na rua.', category: categories[1], address: addresses[1] },
  { title: 'Vazamento de esgoto', description: 'Esgoto vazando na calçada.', category: categories[2], address: addresses[2] }
])
