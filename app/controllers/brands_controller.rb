class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      flash[:notice] = "Brand created"
      redirect_to(:back)
    else
      flash[:notice] = "something went wrong"
      render 'index'
    end
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.update(brand_params)
    redirect_to brands_path
  end

private
  def brand_params
    params.require(:brand).permit(:url, :name, :image)
  end
end
