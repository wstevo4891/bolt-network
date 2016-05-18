class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string   :title
    	t.string   :photo
    	t.integer  :year
    	t.string   :rating
    	t.string   :length
    	t.string   :blurb
    	t.string   :summary
    	t.integer  :tomato_meter
    	t.json     :scenes, array: true, default: []
    	t.json     :people, array: true, default: []

      t.timestamps null: false
    end
  end
end
