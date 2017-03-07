class ContactsController < ApplicationController
  def index
    @store = Store.new(name: 'Hello', address: '1234 main st. Portland, OR', phone: '(503) 555-5555')
  end
end
