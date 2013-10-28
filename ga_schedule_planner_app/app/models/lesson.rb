class Lesson < ActiveRecord::Base
  
  attr_accessible :course_id, :frequency, :url, :start, :end

  belongs_to :producer, :class_name => 'User'
  has_many :enrollments
  has_many :students, :through => :enrollments, :class_name => 'User'
  has_many :instructor_allocations
  has_many :instructors, :through => :instructor_allocations, :class_name => 'User'
  has_many :room_bookings
  has_many :classrooms, :through => :room_bookings
  belongs_to :course


end