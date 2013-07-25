class MovieVenue < ActiveRecord::Base
  attr_accessible :address, :city, :country, :description_html, :description_text, :latitude, :longitude, :name, :postal_code, :region, :urls
end
