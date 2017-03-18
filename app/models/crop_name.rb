class CropName < ActiveRecord::Base
    belongs_to :produce_givens
    belongs_to :garden_crop
end
