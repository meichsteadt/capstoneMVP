class SlideshowController < ApplicationController
  def update
    @slideshow.images = []
    params[:images].each {|id| @slideshow.images.push(Image.find(id)) }
    redirect_to(:back)
  end
end
