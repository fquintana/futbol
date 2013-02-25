class CreateEquiposTorneosTable < ActiveRecord::Migration
  def self.up
    create_table :equipos_torneos, :id => false do |t|
        t.references :equipo
        t.references :torneo
    end
    add_index :equipos_torneos, [:equipo_id, :torneo_id]
    add_index :equipos_torneos, [:torneo_id, :equipo_id]
  end

  def self.down
    drop_table :equipos_torneos
  end
end