class MovieHappening < ActiveRecord::Base
  # before_save do self.city.downcase! end
  before_save :lowercase
  attr_accessible :city, :country, :date, :movie_id, :movie_name, :movie_venue_id, :show_times, :urls, :venue_name, :venue_address

  def lowercase
  	if self.city?
	  	self.city.downcase!
	  end
	  if self.country?
	  	self.country.downcase!
	  end
  end
end
