class FlatHappening < ActiveRecord::Base
  attr_accessible :address, :cancelled, :city, :classification, :country, :description_html, :description_text, :end_time, :images, :language, :latitude, :longitude, :meta, :name, :people, :postal_code, :recurring, :recurring_details, :region, :start_time, :tags, :tickets, :timezone, :urls, :venue
end
