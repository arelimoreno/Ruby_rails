class Teacher < ActiveRecord::Base
	belongs_to :subject
	mount_uploader :perfil, PerfilUploader
end
