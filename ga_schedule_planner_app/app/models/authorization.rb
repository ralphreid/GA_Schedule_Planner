class Authorization < ActiveRecord::Base
  
  attr_accessible :user_id, :role_id

  belong_to :users
  belong_to :roles


end