class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.float :sale_price
      t.integer :stock
      t.integer :stock_min
      t.string :description
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
