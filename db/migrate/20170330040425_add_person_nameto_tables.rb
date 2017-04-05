class AddPersonNametoTables < ActiveRecord::Migration
  def change
      add_column :events_people, :PersonName, :text
  end
end
