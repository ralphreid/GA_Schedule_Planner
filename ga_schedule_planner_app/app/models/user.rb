class User < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name

  has_many :roles
  has_many :roles, :through => :authorizations
  has_many :enrollments
  has_many :lessons, :through => :enrollments


end