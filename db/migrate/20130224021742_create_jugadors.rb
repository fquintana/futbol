class CreateJugadors < ActiveRecord::Migration
  def change
    create_table :jugadors do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.integer :numero
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
