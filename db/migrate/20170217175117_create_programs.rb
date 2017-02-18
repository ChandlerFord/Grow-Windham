class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :ProgramName
      t.date :ProgramStartDate
      t.date :ProgramEndDate
      t.text :ProgramDescription

      t.timestamps null: false
    end
  end
end
