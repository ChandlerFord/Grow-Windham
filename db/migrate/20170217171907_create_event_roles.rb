class CreateEventRoles < ActiveRecord::Migration
  def change
    create_table :event_roles do |t|
      t.text :EventRole, :primary_key => true
      t.text :Description

      t.timestamps null: false
    end
  end
end
