class Enrollment < ActiveRecord::Base
  
  attr_accessible :student_id, :lesson_id, :enrollment_date, :payment_status

  belongs_to :student
  belongs_to :lesson


end