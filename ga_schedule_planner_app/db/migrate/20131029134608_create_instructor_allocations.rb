class CreateInstructorAllocations < ActiveRecord::Migration
  def chnage
    create_table :instructor_allocations do |t|
      t.integer :instructor_id
      t.integer :lesson_id
    end
  end

end
