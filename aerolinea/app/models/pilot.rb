class Pilot < ActiveRecord::Base
	belongs_to :airplane
	has_many :travels
	has_many :routes, through: :travels
	
end
