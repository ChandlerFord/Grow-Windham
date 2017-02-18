class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.text :EventType, :primary_key => true
      t.text :Description

      t.timestamps null: false
    end
  end
end
