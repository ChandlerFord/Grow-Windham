class PeopleOrganization < ActiveRecord::Base
    has_many :people
    has_many :organizations
    
    def self.search(search)
        if search
            where('OrganizationName LIKE ?', "%#{search}%")
        else
            all
        end
    end
    
end
