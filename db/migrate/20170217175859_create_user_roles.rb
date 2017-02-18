class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.text :UserRole
      t.text :UserRoleDescription

      t.timestamps null: false
    end
  end
end
