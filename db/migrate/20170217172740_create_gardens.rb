class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.text :GardenName, :primary_key => true
      t.text :GardenLocation

      t.timestamps null: false
    end
  end
end
