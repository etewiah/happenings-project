class FlatHappening < ActiveRecord::Base
	before_save :lowercase
  attr_accessible :address, :cancelled, :city, :classification, :country, 
  	:description_html, :description_text, :end_time, :images, :language, 
  	:latitude, :longitude, :meta, :name, :people, :postal_code, :recurring, 
  	:recurring_details, :region, :start_time, :tags, :tickets, :timezone, 
  	:urls, :venue, :namespaced_id, :venue_name

	serialize :images, JSON
	serialize :urls, JSON
	serialize :tags, JSON
	serialize :people, JSON
	serialize :venue, JSON
	serialize :meta, JSON
	validates :name, :presence => true
	validates :city, :presence => true
	validates :country, :presence => true

	def lowercase
  	if self.city?
	  	self.city.downcase!
	  end
	  if self.country?
	  	self.country.downcase!
	  end
  end
end
