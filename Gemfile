source 'https://rubygems.org'

#se debe installar node.js sudo apt-get install nodejs
#para poder correr el servidor ya que se usara el kde de java script
#este estara ubicado en el pc y no en el explorador


#se usa budler para instalar gems
#si no se especifica la version de la gema bundler instalara la ultima version
#me debo estar en la carpeta del proyecto por terminal para usar bundle
#ejemplo u@e:~/ruby_example$ bundle install --without production


#version de ruby que usa la app
ruby '1.9.3'

#si se utiliza gemset usar esta linea 
#si se usa siempre debe estar seguida de la version de ruby
	#ruby-gemset=Miproyecto

#se debe tener la gema gem 'execjs' con bundle install
gem 'execjs'

#grupo de desarrollo
group :development do

	#gem 'sqlite3', '1.3.8' obliga a bundler a instalarla explicitamente 
	#indicando que sera instalada en un entorno de desarrollo
	#esto se hace con el fin de evitar conflictos con la bd usada en Heroku
	gem 'sqlite3', '1.3.8'


end

#grupo de produccion
#este gropo de gemas no seran instaladar por el bundle 
#u@e:~/ruby_example$ bundle install --without production
group :production do
	#gem 'pg', '0.15.1' obliga a bundler a instalarla explicitamente
	#Heroku usa un gestor de base de datos postgres
	#debemos instalar la gem 'pg' para que ror hable con la bd de heroku
	gem 'pg', '0.15.1'

	#gem 'rails_12factor', '0.0.2' es usada por heroku para servir archivos estatidos
	#ej css imgenes etc.
	gem 'rails_12factor', '0.0.2'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


