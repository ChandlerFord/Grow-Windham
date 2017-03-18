class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :ResourceName
      t.date :TransactionDate
      t.text :ResourceType
      t.text :ResourceTransaction
      t.integer :MonetaryValue
      t.text :NonMonetaryValue
      t.integer :ResourcePersonalID
      t.text :ResourceOrganization
      t.integer :DestinationPersonalID
      t.text :DestinationOrganization
      t.text :Description

      t.timestamps null: false
    end
  end
end
