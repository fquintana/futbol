class Cancha < ActiveRecord::Base
  attr_accessible :nombre, :numero
  
  validates_presence_of :nombre,:numero
  
end
