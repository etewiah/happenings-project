class MovieHappening < ActiveRecord::Base
  attr_accessible :city, :country, :date, :movie_id, :movie_name, :movie_venue_id, :show_times, :urls, :venue_name
end
