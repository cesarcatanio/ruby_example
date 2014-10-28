#Esta migracíon proporciona una manera de alterar la estructura de la base de datos incrementalmente
#de manera que nuestro modelo de datos puede adaptarse a los requisitos cambiantes
class CreateUsers < ActiveRecord::Migration
	#con el metodo change podemos ir de atras hacia adelante en las versiones de la table
  def change
  	#metodo create_table creamos y almacenamos los users
    #El campo id en la tabla se crea automaticamente
    create_table :users do |t|
    	#con la variable de bloque t definimos el tipo y el nombre de la columna en la tabla.
      t.string :name
      t.string :email

      #Comando especial que crea las dos columnas created_at y update_at
      #que registra cuando se crea o modifica un campo
      t.timestamps
    end
  end
end

#Un modelo representa un solo usuario
#Mientras una tabla de la base de datos se compone de muchos usuarios