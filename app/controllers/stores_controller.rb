class StoresController < ApplicationController
  def edit

  end

  def show

  end

  def index

  end

  def update
    if @store.update(store_params)
      redirect_to store_path(@store)
    else
      redirect_to store_path(@store)
    end
  end

private
  def store_params
    params.require(:store).permit(:name, :address, :phone, :email, :facebook, :instagram, :twitter, :pinterest)
  end
end
