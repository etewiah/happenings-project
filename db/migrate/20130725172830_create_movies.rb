class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description_text
      t.text :description_html
      t.text :tags
      t.text :urls

      t.timestamps
    end
  end
end
