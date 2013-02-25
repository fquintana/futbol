class Jugador < ActiveRecord::Base
  attr_accessible :apellido, :apodo, :fecha_nacimiento, :nombre, :numero, :equipo_id
  
  belongs_to :equipo
  
end
