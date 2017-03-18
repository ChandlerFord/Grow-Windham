class EventsPerson < ActiveRecord::Base
    has_many :people
    has_many :events
    has_many :event_roles
    has_many :sub_organizations
    has_many :organizations
end
