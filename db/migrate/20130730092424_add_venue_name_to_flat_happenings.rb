class AddVenueNameToFlatHappenings < ActiveRecord::Migration
	def up
    add_column :flat_happenings, :venue_name, :string
  end

  def down
    remove_column :flat_happenings, :venue_name
  end
end
