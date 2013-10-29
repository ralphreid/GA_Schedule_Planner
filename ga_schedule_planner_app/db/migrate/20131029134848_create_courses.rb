class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string    :name
      t.text      :description
      t.string    :status
    end
  end
end
