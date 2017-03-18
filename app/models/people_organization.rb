class PeopleOrganization < ActiveRecord::Base
    has_many :people
    has_many :organizations
end
