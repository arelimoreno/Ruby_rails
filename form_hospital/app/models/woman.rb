class Woman < ActiveRecord::Base
	validates :nombre, :apellido, :seg_apellido, :identidicacion, :fecha_nacimiento, :grupo_s, :estado_civil, :cancer_o, :cancer_m, presence:true
	validates :identidicacion, length:{in: 6..10}
	validates :nombre, :apellido, :seg_apellido, length:{maximum:10}
	validates :hijo, :aborto, numericality:{only_integer: true}
	validates :identidicacion, numericality:true
	validates :enfermedad, length:{maximum:100}

end
