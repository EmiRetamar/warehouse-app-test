class CreateSalesDetail < ActiveRecord::Migration[6.1]
  def change
    create_table :sales_details do |t|
      t.belongs_to :sale, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.float :sale_price
      t.integer :quantity

      t.timestamps
    end
  end
end
