class Unit < ActiveRecord::Base
	has_many :products,:dependent => :destroy
	validates :unit_type,presence: true
end
