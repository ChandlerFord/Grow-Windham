class Garden < ActiveRecord::Base
    belongs_to :garden_crops
    belongs_to :garden_inventorie
    belongs_to :events
end
