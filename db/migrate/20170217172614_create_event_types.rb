class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.text :EventType
      t.text :Description

      t.timestamps null: false
    end
  end
end
