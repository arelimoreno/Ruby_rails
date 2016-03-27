class Route < ActiveRecord::Base
	has_many :travels
	has_many :pilots, through: :travels

	has_many :passports

	def vias
		"#{self.origen} -#{self.destino}- #{self.horario_salida}"
	end 
end
