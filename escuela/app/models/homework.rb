class Homework < ActiveRecord::Base
	belongs_to :subject
	has_one :answer
end
