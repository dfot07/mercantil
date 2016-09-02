class CreateAppearers < ActiveRecord::Migration[5.0]
  def change
    create_table :appearers do |t|
      t.references :user, foreign_key: true
      t.references :mercantile, foreign_key: true
      t.string :apellidos
      t.string :nombres
      t.string :identificacion

      t.timestamps
    end
  end
end
