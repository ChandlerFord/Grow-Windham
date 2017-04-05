class Garden < ActiveRecord::Base
    belongs_to :garden_crops
    belongs_to :garden_inventories
    belongs_to :events
end
