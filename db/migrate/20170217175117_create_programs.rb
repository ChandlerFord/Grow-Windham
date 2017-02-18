class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :ProgramName, :primary_key => true
      t.date :ProgramStartDate, :primary_key => true
      t.date :ProgramEndDate
      t.text :ProgramDescription

      t.timestamps null: false
    end
  end
end
