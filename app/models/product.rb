class Product < ApplicationRecord
  belongs_to :brand
  has_attached_file :image, styles: { medium: "600x600>", thumb: "225x225>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def get_next
    if self.id == Product.all.length
      1
    else
      self.id + 1
    end
  end

  def get_prev
    if self.id == 1
      Product.all.length
    else
      self.id - 1
    end
  end

  def get_nexter
    if self.id == Product.all.length
      2
    elsif self.id == (Product.all.length - 1)
      1
    else
      self.id + 2
    end
  end

  def get_nextest
    if self.id == Product.all.length
      3
    elsif self.id == (Product.all.length - 1)
      2
    elsif self.id == (Product.all.length - 2)
      1
    else
      self.id + 3
    end
  end
end
