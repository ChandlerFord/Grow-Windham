class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.text :UserRole, :primary_key => true
      t.text :UserRoleDescription

      t.timestamps null: false
    end
  end
end
