# Logica de users donde tendremos los metodos y este controlador heredara de ApplicationController
class UsersController < ApplicationController

# con este metodo hacemos el llamado al modelo y obtenemos los datos de la base de datos
# permitiendo que el controlador maneje la informacion

	def index
		# con las variables de instancia que inician con @ y son visibles dentro de la clase donde fueron llamadas
		@users = User.all
	end

	def show
		# rails usa un hash llamado params para tener el id que se puede pasar por la url
		# la clave es id y su valor es el numero de este params={id:"numero"}
		@user = User.find(params[:id])
		#en caso de que queramos que nos dirija a otra vista usamos render
		# en este caso nos renderisara la vista "detalle"
		render action:"detalle"
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_url
	end
# cearemos nuestro accion para la funcion dentro del usuario 
# donde haremos una consulta a nuestra base de usuarios  
# donde pediremos el parametro id por medio de un hash 
# @users es nuestro accion 
# esta accion funciona via get para mostrar los datos del usuario
	def edit
		@user = User.find(params[:id])
	end

# esta accion funciona exclusivamente via post
# post es usadara para actualizar los datos en la base de datos
# sera llamada al formulario
	def update
		@user=User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_url
		else
			render action: 'edit'
	end

	

	def new
		# instancia al usuario pero sus contenidos son nil
		@user = User.new	
	end
# envia los datos por post
	def create
		@user = User.new(user_params)
		if @user.save
			# flash mensaje para darle la bienvenida solo se muestra la primera vez
			flash[:success]="Bienvenidos"
			redirect_to users_url
			else
				render action: 'new'
		end
	end

	# esta funciona nos sirve para obtener todos los valores que han sido ingresados por el formulario
	def user_params
		# permit campos permitidos
		# require parametros requeridos por el usuario
		params.require(:user).permit(:nombre,:email,:password,:password_confirmation)
	end

end