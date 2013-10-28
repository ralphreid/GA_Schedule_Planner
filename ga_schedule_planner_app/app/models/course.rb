class Course < ActiveRecord::Base
  
  attr_accessible :name, :description, :status

  has_many :lessons


end