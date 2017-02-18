class CreatePersontTypes < ActiveRecord::Migration
  def change
    create_table :persont_types do |t|
      t.text :PersonType, :primary_key => true
      t.text :PersonTypeDescription

      t.timestamps null: false
    end
  end
end
