class Home < ActiveRecord::Base
  belongs_to :tower
  has_many :people, dependent: :destroy
end
