class Lesson < ActiveRecord::Base
  
  attr_accessible :course_id, :frequency, :url, :start, :end

  belongs_to :producer, :class_name => 'User'
  has_many :enrollments
  has_many :students, :through => :enrollments, :class_name => 'User'
  has_many :allocations
  has_many :instructors, :through => :allocations, :class_name => 'User'
  has_many :bookings
  has_many :classrooms, :through => :bookings
  belongs_to :course


end