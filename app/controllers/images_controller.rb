class ImagesController < ApplicationController

  def index

  end

  def create
    @slideshow.images.create(image_params)
    redirect_back(fallback_location: '/')
  end

  def update

  end

  def destroy

  end

private
  def image_params
    params.require(:image).permit(:image, :slideshow_id)
  end
end
