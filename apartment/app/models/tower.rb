class Tower < ActiveRecord::Base
	has_many :homes, dependent: :destroy
end
