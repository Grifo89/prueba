class CreateTipoDeUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_de_usuarios do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
