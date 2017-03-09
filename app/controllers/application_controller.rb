class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  before_action :find_store
  before_action :authenticate, only: [:edit, :new]

  def find_store
    if Store.first
      @store = Store.first
      if Layout.first
        @layout = Layout.find_by_store_id(@store.id)
      else
        @layout = Layout.new()
      end
      @slideshow = Slideshow.find_by_layout_id(@layout.id)
    else
      @store = Store.new()
    end
    @brands = Brand.all
  end

  def authenticate
    if !session[:admin]
      flash[:notice] = "You don't have permission to do that"
      redirect_to '/'
    end
  end
end
