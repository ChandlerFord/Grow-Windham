class CreateCropNames < ActiveRecord::Migration
  def change
    create_table :crop_names do |t|
      t.string :CropName, :primary_key => true

      t.timestamps null: false
    end
  end
end
