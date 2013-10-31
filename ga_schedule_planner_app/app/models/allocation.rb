class Allocation < ActiveRecord::Base
  
  attr_accessible :instructor_id, :lesson_id

  belongs_to :instructor, class_name: 'User'
  belongs_to :lesson


end