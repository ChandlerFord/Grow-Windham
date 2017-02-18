class CreatePeoplePersonTypes < ActiveRecord::Migration
  def change
    create_table :people_person_types do |t|
      t.integer :PersonalID
      t.text :PersonType

      t.timestamps null: false
    end
  end
end
