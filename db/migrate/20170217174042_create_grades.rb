class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :Grade, :primary_key => true
      t.text :GradeDescription

      t.timestamps null: false
    end
  end
end
