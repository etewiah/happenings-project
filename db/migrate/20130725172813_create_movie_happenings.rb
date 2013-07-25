class CreateMovieHappenings < ActiveRecord::Migration
  def change
    create_table :movie_happenings do |t|
      t.string :movie_name
      t.string :venue_name
      t.integer :movie_id
      t.integer :movie_venue_id
      t.date :date
      t.text :urls
      t.text :show_times
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
