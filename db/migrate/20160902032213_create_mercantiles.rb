class CreateMercantiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mercantiles do |t|
      t.references :user, foreign_key: true
      t.string :acto
      t.string :observacion
      t.integer :secuencia
      t.integer :fecha

      t.timestamps
    end
  end
end
