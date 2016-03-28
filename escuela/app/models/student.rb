class Student < ActiveRecord::Base
	has_many :registrations
	has_many :subjects, through: :registrations
	has_one :answer
	mount_uploader :foto, FotoUploader

	def nombre_full
		"#{self.nombre} -#{self.apellido}"
		
	end
end
