class CreateFlatHappenings < ActiveRecord::Migration
  def change
    create_table :flat_happenings do |t|
      t.string :classification
      t.string :language
      t.string :name
      t.text :description_text
      t.text :description_html
      t.datetime :start_time
      t.datetime :end_time
      t.string :timezone
      t.float :longitude
      t.float :latitude
      t.text :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.text :meta
      t.text :people
      t.text :venue
      t.text :tickets
      t.text :images
      t.text :tags
      t.text :urls
      t.boolean :recurring
      t.text :recurring_details
      t.boolean :cancelled

      t.timestamps
    end
  end
end
