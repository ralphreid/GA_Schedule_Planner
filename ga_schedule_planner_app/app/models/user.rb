class User < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name

  has_many :roles
  has_many :roles, :through => :authorizations
  has_many :enrollments, foreign_key: 'student_id'
  has_many :lessons, :through => :enrollments
  has_many :enrollments, foreign_key: 'instructor_id'
  has_many :lessons, :through => :instructor_allocations


end