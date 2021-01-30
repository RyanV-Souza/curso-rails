namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Deletando Database...")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success()

      spinner = TTY::Spinner.new("[:spinner] Criando Database...")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success()

      spinner = TTY::Spinner.new("[:spinner] Migrando Database...")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success()

      spinner = TTY::Spinner.new("[:spinner] Populando Database...")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success()

    else
      puts 'Você não está em ambiente de desenvolvimento'
    end
  end

end
