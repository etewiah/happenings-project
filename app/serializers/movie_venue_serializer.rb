class MovieVenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :description_text, :description_html, :longitude, :latitude, :address, :city, :region, :postal_code, :country, :urls
end
