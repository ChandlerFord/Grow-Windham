class CreateGardenInventories < ActiveRecord::Migration
  def change
    create_table :garden_inventories do |t|
      t.text :GardenName
      t.text :ToolName
      t.integer :Count

      t.timestamps null: false
    end
  end
end
