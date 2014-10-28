class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
  end
end

# para agregar esta calumna primero se tuvo que instalar la gem bcryp agregandola en el gemfile y luego conrriendo bundle install
# luego agregamos la columna de la contraseña con 
# rails generate migration add_password_digest_to_users password_digest:string
# luego correremos esta migracion con
# bundle exec rake db:migrate

