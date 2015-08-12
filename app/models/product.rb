class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :unit
  has_many :images,:dependent => :destroy
  has_many :histories
  has_many :orders,:through=>:histories
  has_many :wishlists
  has_many :users,:through=>:wishlists
  validates :product_name,presence: true
  validates :price,presence: true
  validates :available,presence: true
end
