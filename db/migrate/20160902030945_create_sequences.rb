class CreateSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :sequences do |t|
      t.references :user, foreign_key: true
      t.integer :secuencia
      t.integer :fecha

      t.timestamps
    end
  end
end
