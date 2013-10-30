class Authorization < ActiveRecord::Base
  
  attr_accessible :user_id, :role_id, :role, :user

  belongs_to :user
  belongs_to :role


end