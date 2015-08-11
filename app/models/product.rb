class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :unit
  has_many :images
  validates :product_name,presence: true
  validates :price,presence: true
  validates :available,presence: true
end
