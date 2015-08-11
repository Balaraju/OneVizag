class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :status
  has_many :histories
  has_many :products,:through=>:histories
end
