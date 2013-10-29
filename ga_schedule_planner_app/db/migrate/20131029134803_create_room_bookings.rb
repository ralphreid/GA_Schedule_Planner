class CreateRoomBookings < ActiveRecord::Migration
  def change
    create_table :room_bookings do |t|
      t.integer :lesson_id
      t.integer :classroom_id
      t.date    :start
      t.date    :finish
    end
  end
end
