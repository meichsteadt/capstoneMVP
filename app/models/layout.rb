class Layout < ApplicationRecord
  belongs_to :user
  has_attached_file :store_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :store_image, content_type: /\Aimage\/.*\z/
end
