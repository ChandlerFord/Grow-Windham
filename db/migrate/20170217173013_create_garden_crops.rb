class CreateGardenCrops < ActiveRecord::Migration
  def change
    create_table :garden_crops do |t|
      t.text :GardenName
      t.text :CropName
      t.date :DatePlanted
      t.integer :RowFeet
      t.date :DateHarvested
      t.integer :PoundsHarvested

      t.timestamps null: false
    end
  end
end
