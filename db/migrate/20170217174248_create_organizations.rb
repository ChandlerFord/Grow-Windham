class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.text :OrganizationName
      t.text :OrganizationType

      t.timestamps null: false
    end
  end
end
