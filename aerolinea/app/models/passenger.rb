class Passenger < ActiveRecord::Base
	has_many :tickets
	has_many :passports, through: :tickets
end
