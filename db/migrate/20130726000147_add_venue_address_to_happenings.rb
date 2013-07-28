class AddVenueAddressToHappenings < ActiveRecord::Migration
	 def up
    add_column :movie_happenings, :venue_address, :string
  end

  def down
    remove_column :movie_happenings, :venue_address
  end
end
