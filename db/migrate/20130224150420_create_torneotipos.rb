class CreateTorneotipos < ActiveRecord::Migration
  def change
    create_table :torneotipos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
