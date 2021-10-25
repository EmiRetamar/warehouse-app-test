class CreateCashRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :cash_registers do |t|
      t.datetime :date
      t.float :total_cash

      t.timestamps
    end
  end
end
