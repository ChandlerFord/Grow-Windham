class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :EventName
      t.date :EventDate
      t.time :EventStartTime
      t.integer :EventHours
      t.text :Eventlocation
      t.integer :NumberAttended
      t.text :ProgramName
      t.date :ProgramStartDate
      t.text :GardenName
      t.text :EventType

      t.timestamps null: false
    end
  end
end
