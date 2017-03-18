class SubOrganization < ActiveRecord::Base
    belongs_to :events_people
    has_many :organizations
end
