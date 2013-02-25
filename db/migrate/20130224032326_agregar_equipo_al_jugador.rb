class AgregarEquipoAlJugador < ActiveRecord::Migration
  def up
    change_table :jugadors do |t|
      t.integer :equipo_id
    end
  end
 
  def down
    remove_column :jugadors, :equipo_id
  end
end
