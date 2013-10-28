class RoomBooking < ActiveRecord::Base
  
  attr_accessible :lesson_id, :classroom_id, :start, :finish

  has_many :lessons
  has_many :classrooms 


end