class InstructorAllocation < ActiveRecord::Base
  
  attr_accessible :instructor_id, :lesson_id

  belongs_to :instructor
  belongs_to :lesson


end