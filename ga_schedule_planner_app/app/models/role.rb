class Role < ActiveRecord::Base
  
  attr_accessible :name, :description

  has_many :authorizations
  has_many :users, :through => :authorizations

  

end