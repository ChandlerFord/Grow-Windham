class CreateToolNames < ActiveRecord::Migration
  def change
    create_table :tool_names do |t|
      t.string :ToolName
      t.string :Description

      t.timestamps null: false
    end
  end
end
