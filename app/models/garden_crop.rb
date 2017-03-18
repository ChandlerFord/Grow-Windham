class GardenCrop < ActiveRecord::Base
    has_many :gardens
    validates_length_of :PoundsHarvested, :minimum =>1
end
