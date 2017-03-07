class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_store

  def find_store
    @store = Store.find(2)
    @layout = Layout.find_by_store_id(2)
  end
end
