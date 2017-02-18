class CreatePeopleOrganizations < ActiveRecord::Migration
  def change
    create_table :people_organizations do |t|
      t.integer :PersonalID
      t.text :OrganizationName

      t.timestamps null: false
    end
  end
end
