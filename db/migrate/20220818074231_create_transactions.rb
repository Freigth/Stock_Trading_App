class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :completed, default: false
      t.string :ticker
      t.string :symbol
      t.string :company_name
      t.decimal :stock_price
      t.integer :stock_quantity, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
