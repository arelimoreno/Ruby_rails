class Airplane < ActiveRecord::Base
	has_one :pilot

	def aviones
		"#{self.codigo} -#{self.nombre}"
		
	end
	
end
