class Person < ActiveRecord::Base
    belongs_to :events_people
    belongs_to :people_organizations
    belongs_to :email_list_type_people
    belongs_to :people_person_types
    belongs_to :resource
end
