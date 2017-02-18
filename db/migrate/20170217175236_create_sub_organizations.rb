class CreateSubOrganizations < ActiveRecord::Migration
  def change
    create_table :sub_organizations do |t|
      t.text :OrganizationName
      t.text :SubOrganizationName
      t.text :Description

      t.timestamps null: false
    end
  end
end
