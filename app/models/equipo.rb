class Equipo < ActiveRecord::Base
  attr_accessible :nombre
  
  has_many :jugadors
  has_and_belongs_to_many :torneos
  
end
