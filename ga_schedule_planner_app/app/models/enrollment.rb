class Enrollment < ActiveRecord::Base
  
  attr_accessible :student_id, :lesson_id, :enrollment_date, :payment_status, :user, :lesson

  belongs_to :student, class_name: 'User'
  belongs_to :lesson


end