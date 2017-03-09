class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: "600x600>", thumb: "225x225>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def get_next
    if self == Product.last
      Product.first.id
    else
      self.id + 1
    end
  end

  def get_prev
    if self == Product.first
      Product.last.id
    else
      self.id - 1
    end
  end

  def get_nexter
    if self == Product.last
      Product.first.id + 1
    elsif self == (Product.all[-2])
      Product.first.id
    else
      self.id + 2
    end
  end

  def get_nextest
    if self == Product.last
      Product.first.id + 2
    elsif self == (Product.all[-2])
      Product.first.id + 1
    elsif self == (Product.all[-3])
      Product.first.id
    else
      self.id + 3
    end
  end
end
