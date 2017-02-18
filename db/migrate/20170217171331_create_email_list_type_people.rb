class CreateEmailListTypePeople < ActiveRecord::Migration
  def change
    create_table :email_list_type_people do |t|
      t.integer :PersonalID
      t.text :EmailListType

      t.timestamps null: false
    end
  end
end
