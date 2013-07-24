#!/usr/bin/env ruby 
 
# usage:
# ruby get_and_post_scrob_bulk_happenings.rb **access_token**
require 'rubygems'
require 'json'
require 'rest-client' 
require 'uri'
require 'pry'
 
def parse_args
v1 = ARGV[0]
v2 = ARGV[1]
puts v1
puts v2
end

def parse_happening
	source_url = 'http://ws.audioscrobbler.com/2.0/?method=geo.getevents&location=berlin&limit=70&api_key=' +
	ARGV[0] +	'&format=json'
	# 'http://localhost:3000/data/last_fm_happenings_search_result.json'
  post_url = "http://happenings-project.herokuapp.com/api/v1/flat_happenings"
  # 'http://happenings-project.dev/api/v1/flat_happenings'
  happenings = JSON.parse(RestClient.get(source_url))

	begin
		happenings['events']['event'].each do |happening|
		# (1..3).each do |i|

			# happening = happenings['events']['event'][i]
	
	  	RestClient.post post_url,  :flat_happening => { 
	  		:name => happening['title'] ,
	  		:language => 'en',
	  		:description_html => happening['description'],
	  		:start_time => happening['startDate'],
	  		:country => happening['venue']['location']['country'],
	  		:city => happening['venue']['location']['city'],
	  		:postal_code => happening['venue']['location']['postalcode'],
	  		:address => happening['venue']['location']['street'],
	  		:longitude => happening['venue']['location']['geo:point']['geo:long'],
	  		:latitude => happening['venue']['location']['geo:point']['geo:lat'],
	  		'images' => {
	  			'' => [{:url => happening['image'][2]['#text']}]
	  			},
	  		:meta => happening,
	  		:people => happening['artists'],
	  		:tags => happening['tags'] ? happening['tags']['tag'] : {},
	  		'urls' => {
							  	'' =>	 [
							  			{
							  				:name => 'website', :url => happening['website']
							  			},
							  			{
							  				:name => 'source', :url => happening['url']
							  			}]
							  	},
				:classification => "scrob",
	  		:namespaced_id => "scrob_" + happening['id'],
	  		:venue => happening['venue'],
	  		:cancelled => happening['cancelled']

	  	}
	  end	
  	# nested hash format above is rather strange as I had to use to workaround a prob with RestClient:
  	# http://stackoverflow.com/questions/6436110/restclient-strips-out-the-array-of-hashes-parameter-with-just-the-last-hash
  	# might need to add street (where I now have address..)
	# rescue => e
	# 	binding.pry
	#   e.response
	end

end


parse_happening

