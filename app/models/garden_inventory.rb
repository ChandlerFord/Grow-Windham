class GardenInventory < ActiveRecord::Base
    has_many :gardens
    has_many :tool_names
end
