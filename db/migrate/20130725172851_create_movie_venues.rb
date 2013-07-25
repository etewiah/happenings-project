class CreateMovieVenues < ActiveRecord::Migration
  def change
    create_table :movie_venues do |t|
      t.string :name
      t.text :description_text
      t.text :description_html
      t.float :longitude
      t.float :latitude
      t.text :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.text :urls

      t.timestamps
    end
  end
end
