class CreateEmailListTypes < ActiveRecord::Migration
  def change
    create_table :email_list_types do |t|
      t.text :ListType
      t.text :ListTypeDescription

      t.timestamps null: false
    end
  end
end
