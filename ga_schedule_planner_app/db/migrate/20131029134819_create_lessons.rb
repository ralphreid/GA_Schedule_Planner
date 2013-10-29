class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer   :course_id
      t.string    :frequency
      t.text      :url
      t.date      :start
      t.date      :end
    end
  end
end
