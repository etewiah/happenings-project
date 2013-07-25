class Movie < ActiveRecord::Base
  attr_accessible :description_html, :description_text, :name, :tags, :urls
end
