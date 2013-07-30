class FlatHappeningSerializer < ActiveModel::Serializer
  attributes :id, :classification, :language, :name, :description_text, :description_html, :start_time, :end_time, :timezone, :longitude, :latitude, :address, :city, :region, :postal_code, :country, :meta, :people, :venue, :tickets, :images, :tags, :urls, :recurring, :recurring_details, :cancelled, :venue_name
end
