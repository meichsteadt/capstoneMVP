class SessionController < ApplicationController
  skip_before_action :authenticate, only: [:new]
  def new

  end

  def index
    if session[:admin]
      session[:admin] = nil
    end
    redirect_to '/'
  end

  def create
    if Store.first.email == params[:email] && Store.first.password == params[:password]
      session[:admin] = true
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy

  end
end
