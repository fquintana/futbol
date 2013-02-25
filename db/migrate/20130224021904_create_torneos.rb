class CreateTorneos < ActiveRecord::Migration
  def change
    create_table :torneos do |t|
      t.string :nombre
      t.integer :torneotipo_id
      t.integer :cantidad_equipos
      t.date :fecha_comienzo

      t.timestamps
    end
  end
end
