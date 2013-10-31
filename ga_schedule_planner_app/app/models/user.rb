class User < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name, :password, :password_confirmation, :email
  has_secure_password

  has_many :authorizations
  has_many :roles, :through => :authorizations
  has_many :enrollments, foreign_key: 'student_id'
  has_many :lessons, :through => :enrollments
  has_many :enrollments, foreign_key: 'instructor_id'
  has_many :lessons, :through => :allocations
  belongs_to :course

end