class Product < ApplicationRecord
  belongs_to :brand
  has_attached_file :image, styles: { medium: "600x600>", thumb: "225x225>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
