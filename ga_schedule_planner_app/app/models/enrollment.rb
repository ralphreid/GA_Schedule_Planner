class Enrollment < ActiveRecord::Base
  
  attr_accessible :user_id, :lesson_id, :enrollment_date, :payment_status

  belong_to :users
  belong_to :lessons


end