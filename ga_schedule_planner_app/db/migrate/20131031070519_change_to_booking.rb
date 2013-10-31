class ChangeToBooking < ActiveRecord::Migration
  def up
    drop_table :room_bookings
    create_table :bookings do |t|
      t.integer "lesson_id"
      t.integer "classroom_id"
      t.date    "start"
      t.date    "finish"
    end
  end

  def down
    drop_table :bookings
    create_table :room_bookings do |t|
      t.integer "lesson_id"
      t.integer "classroom_id"
      t.date    "start"
      t.date    "finish"
    end
  end
end
