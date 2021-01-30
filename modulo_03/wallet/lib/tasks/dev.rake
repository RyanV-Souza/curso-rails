namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando Database') { %x(rails db:drop) }  
      show_spinner('Criando Database'){ %x(rails db:create) }  
      show_spinner('Migrando Database') { %x(rails db:migrate) }
        
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_types)
        
    else
      puts 'Você não está em ambiente de desenvolvimento'
    end
  end

  desc "Cadastro de moedas"
  task add_coins: :environment do
    show_spinner('Cadastrando moedas...') do
      coins = [
        {
          description: 'Bitcoin',
          acronym: 'BTC',
          url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png'
        },
  
        {
          description: 'Ethereum',
          acronym: 'ETH',
          url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/1200px-Ethereum-icon-purple.svg.png'
        },
  
        {
          description: 'Dash',
          acronym: 'DASH',
          url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png'
        },
  
        {
          description: 'ZCash',
          acronym: 'ZEC',
          url_image: 'https://z.cash/wp-content/uploads/2018/10/zcash-logo-fullcolor-512sq.png'
        },
  
        {
          description: 'IOTA',
          acronym: 'MIOTA',
          url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png'
        }
      ]
  
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end
  
  desc "Cadastro dos tipos de mineração"
  task add_mining_types: :environment do
    show_spinner('Cadastrando tipos de mineração...') do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private

    def show_spinner(text)
      spinner = TTY::Spinner.new("[:spinner] #{text}...")
      spinner.auto_spin
      yield
      spinner.success()
    end

end
