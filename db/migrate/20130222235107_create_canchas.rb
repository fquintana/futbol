class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.integer :numero

      t.timestamps
    end
  end
end
