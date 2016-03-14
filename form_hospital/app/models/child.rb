class Child < ActiveRecord::Base
	validates :nombre, :apellido, :seg_apellido, :registro, :fecha_nacimiento, :grupo_s, :vacunas, :madre, :padre, presence:true
	validates :registro, length:{in: 8..10}
	validates :nombre, :apellido, :seg_apellido, length:{maximum:10}
	validates :edad, numericality:{only_integer: true}
	validates :registro, numericality:true
	validates :enfermedad, length:{maximum:100}

	
end
