class StoresController < ApplicationController
  if Store.all.length == 0
    skip_before_action :authenticate, only: [:new, :create]
  end
  def index

  end

  def show
    result = @store.get_google
    @location = "{lat: #{result["lat"]}, lng: #{result["lng"]}}"
  end

  def new
    if Store.all.length > 0
      flash[:notice] = "A store has already been created"
      redirect_to '/'
      @store = Store.new()
    else
      render 'new'
    end
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      location = @store.get_google
      @store.update(lat: location["lat"], lng: location["lng"])
      flash[:notice] = "Welcome to FurniturePress"
      @layout = Layout.new(css_id: 1, store_id: @store.id, store_copy: 'Welcome to FurniturePress! On the left you will be able to access a menu where you can edit and add many things; including slideshow pictures, products, brands, and store information. Take your time, check it out, and make your site look awesome!', store_image: 'https://placeholdit.imgix.net/~text?txtsize=33&txt=350x150&w=350&h=150')
      @layout.save
      @slideshow = Slideshow.new(layout_id: @layout.id)
      @slideshow.save
      3.times do
        @slideshow.images.create(image: 'https://placeholdit.imgix.net/~text?txtsize=93&txt=1110x530&w=1110&h=530')
      end
      session[:admin] = true
      redirect_to '/'
    else
      flash[:notice] = "Something went wrong"
      render 'new'
    end
  end

  def edit

  end

  def update
    if @store.update(store_params)
      location = @store.get_google
      @store.update(lat: location["lat"], lng: location["lng"])
      redirect_to store_path(@store)
    else
      redirect_to store_path(@store)
    end
  end


private
  def store_params
    params.require(:store).permit(:name, :address, :phone, :email, :hours, :facebook, :instagram, :twitter, :pinterest, :password)
  end
end
