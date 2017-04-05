class GardenCrop < ActiveRecord::Base
    has_many :gardens
    validates_length_of :PoundsHarvested, :minimum =>1
    
    def self.search(search)
        if search
            where('GardenName LIKE ?', "%#{search}%")
        else
            all
        end
    end
end
