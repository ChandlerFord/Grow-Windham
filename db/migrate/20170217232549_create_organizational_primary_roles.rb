class CreateOrganizationalPrimaryRoles < ActiveRecord::Migration
  def change
    create_table :organizational_primary_roles do |t|
      t.string :PrimaryRole
      t.string :Description

      t.timestamps null: false
    end
  end
end
