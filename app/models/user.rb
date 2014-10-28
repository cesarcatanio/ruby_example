#Este archivo es el objeto de modelo User
#La clase User hereda de ActiveRecord::Base
#esto permite que el modelo User tenga toda la funcionalidad de la clase ActiveRecord
#Gracias a las convenciones de nombre de ActiveRecord transforma a user en prural users
#generando un archivo de migración en el cual su nombre es una marca de tiempo
class User < ActiveRecord::Base

	#Validaciones de Usuarios con el metodo validate

	before_save {self.email = email.downcase}

	#presence nos asegura que el atributo sea creado para poder guardar el usuario
	#length definimos el maximo o minimo del atributo
	validate :name, presence: true, length: {maximum:5}

	#validamos formato de correo que queremos con el atributo format
	#creamos la expresion regular para el correo con la que verificamos el formato
	VALID_EMAIL_REGEX = /\A[\W+\-.]+@[a-z\d\-.]\.[a-z]+\z/i
	validate :email, presence: true, format: {with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

	# validamos el ingreso de la contraseña con la confimacion de la misma
	# lo logramos con el metodo has_secure_password
	has_secure_password
	validates :password, length: {minimum: 6}
end
