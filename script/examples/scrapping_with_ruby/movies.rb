#!/usr/bin/env ruby

# Name: grabtext.rb
# By: Jason Heppler
# Last Modified Fri Oct 12 14:43:58 2012
#
# This script uses Nokogiri to grab the text only between the 'text' tag
# in XML files. Modify as you need. 
# Usage: ./grabtext.rb path/to/file > output.txt

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open("http://www.google.co.uk/movies?near=madrid&hl=en&sort=1"))


doc.css('.movie').each	do |movie|

	# movie_happening["movie_href"] = movie.css('h2 a').attribute('href').value
	# movie_happening["movie_name"] = movie.css('h2').text
	# movie_happening["movie_length"] = movie.css('.info').text




	movie.css('.showtimes .theater').each do |showtime|

		movie_happening = {}
		movie_happening["movie_href"] = movie.css('h2 a').attribute('href').value
		movie_happening["movie_name"] = movie.css('h2').text
		movie_happening["movie_length"] = movie.css('.info').text


		movie_happening["venue_name"] = showtime.css('.name').text
		movie_happening["venue_address"] = showtime.css(".address").text
		

		times = []
		showtime.css('.times a').each	do |time|
			times.push time.text
		end

  	movie_happening["times"] = times

binding.pry

	end

end

# doc.search('text').each do |link|
#     puts link.content
# end