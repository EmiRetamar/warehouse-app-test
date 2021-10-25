class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      # 'tipo_comprobante', 'serie_comprobante', 'num_comprobante',
      t.datetime :date
      t.float :iva
      t.float :gross_total
      t.integer :discount, null: true
      t.float :total
      t.boolean :registered, default: true
      t.boolean :paid, null: true
      t.references :cash_register_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
