class Unit < ActiveRecord::Base
	has_many :products
	validates :unit_type,presence: true
end
