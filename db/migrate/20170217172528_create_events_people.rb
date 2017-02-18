class CreateEventsPeople < ActiveRecord::Migration
  def change
    create_table :events_people do |t|
      t.integer :PersonalID
      t.text :EventName
      t.date :EventDate
      t.integer :HoursWorked
      t.text :EventRole
      t.text :OrganizationName
      t.text :SubOrganizationName
      t.text :Grade

      t.timestamps null: false
    end
  end
end
