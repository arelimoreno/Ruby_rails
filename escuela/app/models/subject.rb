class Subject < ActiveRecord::Base
	has_one :teacher
	has_one :homework
	has_many :registrations
	has_many :students, through: :registrations

end
