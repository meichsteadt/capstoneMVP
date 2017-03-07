class Layout < ApplicationRecord
  belongs_to :store
  has_one :slideshow
  has_attached_file :store_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :store_image, content_type: /\Aimage\/.*\z/

  def change_css
    if self.css_id == 1
      2
    else
      1
    end
  end
end
