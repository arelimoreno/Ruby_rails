class ChildrenController < ApplicationController

 
	def index
		@informacion=Child.all

	end

	def respuesta
		@nombre = params[:nombre]
		@seg_nombre = params[:seg_nombre]
		@apellido = params[:apellido]
		@seg_apellido = params[:seg_apellido]
		@registro = params[:registro]
		@edad = params[:edad]
		@sexo = params[:sexo]
		@fecha_nacimiento = params[:fecha_nacimiento]
		@madre = params[:madre]
		@padre = params[:padre]
		@vacunas = params[:vacunas]
		@cancer = params[:cancer]
		@deabetes = params[:deabetes]
		@hiper = params[:hiper]
		@enfermedad = params[:enfermedad]
		@grupo_s = params[:grupo_s]
		@desnutricion = params[:desnutricion]

		@nombres=Child.create({nombre: @nombre, seg_nombre: @seg_nombre, apellido: @apellido, seg_apellido: @seg_apellido,
			registro: @registro, edad: @edad, Sexo: @sexo, fecha_nacimiento: @fecha_nacimiento, madre: @madre, padre: @padre ,vacunas: @vacunas,
			cancer: @cancer, deabetes: @deabetes, hiper: @hiper, enfermedad: @enfermedad, grupo_s: @grupo_s, desnutricion: @desnutricion})
		@informacion=Child.all

		
		
	end

	def new
		
		
	end

	def create
		
	end

	
end