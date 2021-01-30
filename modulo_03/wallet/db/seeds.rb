# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as moedas"
Coin.create!(
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png'
)

Coin.create!(
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/1200px-Ethereum-icon-purple.svg.png'
)

Coin.create!(
    description: 'Dash',
    acronym: 'DASH',
    url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png'
)

puts "Moedas cadastradas com sucesso"