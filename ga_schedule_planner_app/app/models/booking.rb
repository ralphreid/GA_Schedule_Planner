class Booking < ActiveRecord::Base
  
  attr_accessible :lesson_id, :classroom_id, :start, :finish

  belongs_to :lesson
  belongs_to :classroom 


end