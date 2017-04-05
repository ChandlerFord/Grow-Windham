class EventsPerson < ActiveRecord::Base
    has_many :people
    has_many :events
    has_many :event_roles
    has_many :sub_organizations
    has_many :organizations
    
    def self.search(params)
        if params
            where('EventName LIKE ?', "%#{search}%")
        else
            all
        end
    end
    
    def self.personsearch(personsearch)
        if personsearch
            where('PersonalID LIKE ?', "%#{personsearch}%")
        else
            all
        end
    end
    
end
