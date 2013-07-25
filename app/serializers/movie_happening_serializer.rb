class MovieHappeningSerializer < ActiveModel::Serializer
  attributes :id, :movie_name, :venue_name, :movie_id, :movie_venue_id, :date, :urls, :show_times, :city, :country
end
