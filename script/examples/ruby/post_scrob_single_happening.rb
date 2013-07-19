#!/usr/bin/env ruby 
 
require 'rubygems'
require 'json'
require 'rest-client' 
require 'uri'
require 'pry'
 
def parse_happening
	source_url = 'http://localhost:3000/data/last_fm_single_happening.json'
  post_url = 'http://localhost:3000/api/v1/flat_happenings'
  happening = JSON.parse(RestClient.get(source_url))
  # binding.pry

	begin
  	RestClient.post post_url,  :flat_happening => { 
  		:name => happening['event']['title'] ,
  		:language => 'en',
  		:description_html => happening['event']['description'],
  		:start_time => happening['event']['startDate'],
  		:country => happening['event']['venue']['location']['country'],
  		:city => happening['event']['venue']['location']['city'],
  		:postal_code => happening['event']['venue']['location']['postalcode'],
  		:address => happening['event']['venue']['location']['street'],
  		:longitude => happening['event']['venue']['location']['geo:point']['geo:long'],
  		:latitude => happening['event']['venue']['location']['geo:point']['geo:lat'],
  		'images' => {
  			'' => [{:url => happening['event']['image'][2]['#text']}]
  			},
  		:meta => happening['event'],
  		:people => happening['event']['artists'],
  		:tags => happening['event']['tags']['tag'],
  		'urls' => {
						  	'' =>	 [
						  			{
						  				:name => 'website', :url => happening['event']['website']
						  			},
						  			{
						  				:name => 'source', :url => happening['event']['url']
						  			}]
						  	},
			:classification => "scrob",
  		:namespaced_id => "scrob_" + happening['event']['id'],
  		:venue => happening['event']['venue'],
  		:cancelled => happening['event']['cancelled']

  	}
  	# nested hash format above is rather strange as I had to use to workaround a prob with RestClient:
  	# http://stackoverflow.com/questions/6436110/restclient-strips-out-the-array-of-hashes-parameter-with-just-the-last-hash
  	# might need to add street (where I now have address..)
	rescue => e
		binding.pry
	  e.response
	end

end


parse_happening

