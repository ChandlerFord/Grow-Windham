class PeoplePersonType < ActiveRecord::Base
    has_many :persont_types
    has_many :people
end
