namespace :dev do

  DEFAULT_PASSWORD = 123456

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando Database') { %x(rails db:drop) }  
      show_spinner('Criando Database'){ %x(rails db:create) }  
      show_spinner('Migrando Database') { %x(rails db:migrate) }
      show_spinner('Adicionando administrador padrão') { %x(rails dev:add_default_admin) }
      show_spinner('Adicionando usuário padrão') { %x(rails dev:add_default_user) }

      #%x(rails dev:add_mining_types)
      #%x(rails dev:add_coins)
        
    else
      puts 'Você não está em ambiente de desenvolvimento'
    end
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

  def show_spinner(text)
    spinner = TTY::Spinner.new("[:spinner] #{text}...")
    spinner.auto_spin
    yield
    spinner.success()
  end

end
