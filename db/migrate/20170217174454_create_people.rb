class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :PersonalID 
      t.text :LastName
      t.text :Firstname
      t.text :EmailAddress
      t.integer :Age

      t.timestamps null: false
    end
  end
end
