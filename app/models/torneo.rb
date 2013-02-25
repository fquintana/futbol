class Torneo < ActiveRecord::Base
  attr_accessible :cantidad_equipos, :fecha_comienzo, :nombre, :torneotipo_id
  
  belongs_to :torneotipo
  has_and_belongs_to_many :equipos
  
end
