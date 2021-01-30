namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando Database') { %x(rails db:drop) }
        
      show_spinner('Criando Database'){ %x(rails db:create) }
        
      show_spinner('Migrando Database') { %x(rails db:migrate) }
        
      show_spinner('Populando Database') { %x(rails db:seed) }
        
    else
      puts 'Você não está em ambiente de desenvolvimento'
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
