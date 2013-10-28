class InstructorAllocation < ActiveRecord::Base
  
  attr_accessible :user_id, :lesson_id

  belong_to :users
  belong_to :courses


end