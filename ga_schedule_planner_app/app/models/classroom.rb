class Classroom < ActiveRecord::Base
  
  attr_accessible :name, :capacity, :av_resources, :location, :location_url

  has_many :lessons, :through => :room_bookings 


end