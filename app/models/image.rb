class Image < ActiveRecord::Base
  belongs_to :product
  validates :image_src,presence: true
end
