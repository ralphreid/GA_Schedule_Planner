class ChangeToAllocations < ActiveRecord::Migration
  def up
    drop_table :instructor_allocations
    create_table :allocations do |t|
      t.integer "instructor_id"
      t.integer "lesson_id"
    end
  end

  def down
    drop_table :allocations
    create_table :instructor_allocations do |t|
      t.integer "instructor_id"
      t.integer "lesson_id"
    end
  end
end
