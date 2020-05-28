class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono
      t.references :sexo, null: false, foreign_key: true
      t.references :tipo_de_usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
