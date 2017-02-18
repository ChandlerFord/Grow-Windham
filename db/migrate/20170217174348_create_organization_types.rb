class CreateOrganizationTypes < ActiveRecord::Migration
  def change
    create_table :organization_types do |t|
      t.text :OrganizationType, :primary_key => true
      t.text :OrganizationTypeDescription

      t.timestamps null: false
    end
  end
end
