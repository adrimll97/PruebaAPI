class CreateAdjuntos < ActiveRecord::Migration[6.1]
  def change
    create_table :adjuntos do |t|
      t.references :comunicado, foreign_key: { to_table: 'comunicados' }

      t.timestamps
    end
  end
end
