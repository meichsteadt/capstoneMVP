require 'bcrypt'
require 'rest-client'

class Store < ApplicationRecord
  has_many :brands
  has_one :layout

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def get_google
    result = JSON.parse(RestClient.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{self.address}&key=#{ENV["GOOGLE_API_KEY"]}"))
    result["results"][0]["geometry"]["location"]
  end

end
