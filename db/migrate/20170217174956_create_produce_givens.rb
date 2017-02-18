class CreateProduceGivens < ActiveRecord::Migration
  def change
    create_table :produce_givens do |t|
      t.text :CropName
      t.date :DateGive, :primary_key => true
      t.text :HowGiven
      t.integer :PoundsGiven
      t.integer :ValueGiven

      t.timestamps null: false
    end
  end
end
