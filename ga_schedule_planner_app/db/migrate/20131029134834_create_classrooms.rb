class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string    :name
      t.integer   :capacity
      t.string    :av_resources
      t.string    :location
      t.text      :location_url
    end
  end
end
