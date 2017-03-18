class ProduceGiven < ActiveRecord::Base
    has_many :crop_names
    has_many :how_givens
end
