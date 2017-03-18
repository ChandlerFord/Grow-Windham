class CreateResourceTransactions < ActiveRecord::Migration
  def change
    create_table :resource_transactions do |t|
      t.text :ResourceTransaction

      t.timestamps null: false
    end
  end
end
