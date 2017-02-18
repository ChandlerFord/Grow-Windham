class CreateHowGivens < ActiveRecord::Migration
  def change
    create_table :how_givens do |t|
      t.text :HowGiven
      t.text :HowGivenDescription

      t.timestamps null: false
    end
  end
end
