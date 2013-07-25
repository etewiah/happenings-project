class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :description_text, :description_html, :tags, :urls
end
