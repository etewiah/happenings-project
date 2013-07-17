class AddNamespacedIdToFlatHappenings < ActiveRecord::Migration
	 def up
    add_column :flat_happenings, :namespaced_id, :string
  end

  def down
    remove_column :flat_happenings, :namespaced_id
  end

end
