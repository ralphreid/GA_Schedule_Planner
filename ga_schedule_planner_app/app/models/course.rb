class Course < ActiveRecord::Base
  
  attr_accessible :name, :description, :status, :user_id

  has_many :lessons
  has_one :user


end