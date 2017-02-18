class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.text :OrganizationName, :primary_key => true
      t.text :OrganizationType

      t.timestamps null: false
    end
  end
end
