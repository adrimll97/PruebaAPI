class CreateComunicados < ActiveRecord::Migration[6.1]
  def change
    create_table :comunicados do |t|
      t.references :creador, foreign_key: { to_table: 'personas' }
      t.references :receptor, foreign_key: { to_table: 'personas' }
      t.string :asunto
      t.string :contenido
      t.references :comunicado_anterior, foreign_key: { to_table: 'comunicados' }

      t.timestamps
    end
  end
end
