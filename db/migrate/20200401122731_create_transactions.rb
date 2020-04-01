class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :coffee, null: false, foreign_key: true
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
