class CreateSubOrganizations < ActiveRecord::Migration
  def change
    create_table :sub_organizations do |t|
      t.text :OrganizationName, :primary_key => true
      t.text :SubOrganizationName, :primary_key => true
      t.text :Description

      t.timestamps null: false
    end
  end
end
