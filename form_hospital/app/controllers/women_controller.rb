class WomenController < ApplicationController
	def index
		@informacion=Woman.all

	end

	def respuesta_m
		@nombre = params[:nombre]
		@seg_nombre = params[:seg_nombre]
		@apellido = params[:apellido]
		@seg_apellido = params[:seg_apellido]
		@identidicacion = params[:identidicacion]
		@fecha_nacimiento = params[:fecha_nacimiento]
		@estado_civil = params[:estado_civil]
		@hijo = params[:hijo]
		@aborto = params[:aborto]
		@problema = params[:problema]
		@cancer_o = params[:cancer_o]
		@cancer_m = params[:cancer_m]
		@cancer = params[:cancer]
		@deabetes = params[:deabetes]
		@hiper = params[:hiper]
		@alzheimer = params[:alzheimer]
		@enfermedad = params[:enfermedad]
		@grupo_s = params[:grupo_s]
		
		@nombres=Woman.create({nombre: @nombre, seg_nombre: @seg_nombre, apellido: @apellido, seg_apellido: @seg_apellido,
			identidicacion: @identidicacion, fecha_nacimiento: @fecha_nacimiento, estado_civil: @estado_civil, hijo: @hijo ,aborto: @aborto,
			problema: @problema, cancer_o: @cancer_o, cancer_m: @cancer_m, cancer: @cancer, deabetes: @deabetes, hiper: @hiper, enfermedad: @enfermedad, grupo_s: @grupo_s, alzheimer: @alzheimer})
		@informacion=Woman.all

		
		
	end

	def new
		
		
	end

	def create
		
	end

	
end
