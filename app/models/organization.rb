class Organization < ActiveRecord::Base
    belongs_to :events_people
    belongs_to :sub_organizations
    belongs_to :people_organizations
    belongs_to :resource
    has_many :organization_types
end
