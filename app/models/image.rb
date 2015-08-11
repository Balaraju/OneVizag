class Image < ActiveRecord::Base
  belongs_to :product
  validates :imgae_src,presence: true
end
