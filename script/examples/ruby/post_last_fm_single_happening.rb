#!/usr/bin/env ruby 
 
require 'rubygems'
require 'json'
require 'rest-client' 
require 'uri'
require 'pry'
 
def parse_happenings
	url = 'http://localhost:3000/data/last_fm_single_happening.json'
  post_url = 'http://localhost:3000/api/v1/flat_happenings'
  happening = JSON.parse(RestClient.get(url))
  # binding.pry
	RestClient.post post_url, :param1 => 'one', :nested => { :param2 => 'two' }

end

def get_imgs(term)
  url='https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q='+URI.escape(term)
binding.pry
  imgs = JSON.parse(RestClient.get(url))
  for img in imgs["responseData"]["results"]
      puts img["url"]
  end   
end

parse_happenings

=begin
 
get_imgs("yoda") would print
 
http://images.wikia.com/starwars/images/e/e0/Yoda_SWSB.jpg
http://upload.wikimedia.org/wikipedia/en/thumb/9/96/CGIYoda.jpg/200px-CGIYoda.jpg
http://i.dailymail.co.uk/i/pix/2010/10/06/article-1318093-0B803914000005DC-954_306x423.jpg
http://altjapan.typepad.com/.a/6a00d8341bfd2253ef00e55426d7bb8834-320wi
 
=end