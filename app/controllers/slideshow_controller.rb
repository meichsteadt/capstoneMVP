class SlideshowController < ApplicationController
  def update
    @slideshow.products = []
    params[:products].each {|id| @slideshow.products.push(Product.find(id)) }
    redirect_to(:back)
  end
end
