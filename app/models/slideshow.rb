class Slideshow < ApplicationRecord
  belongs_to :layout
  has_many :products
end
