class Passport < ActiveRecord::Base
	belongs_to :route
	has_many :tickets
	has_many :passengers, through: :tickets

	def tiquetes
		"#{self.tipo} -#{self.precio}- ruta #{self.route.origen} -#{self.route.destino}"
	end 
end
