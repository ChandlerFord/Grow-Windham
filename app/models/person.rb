class Person < ActiveRecord::Base
    belongs_to :events_people
    belongs_to :people_organizations
    belongs_to :email_list_type_people
    belongs_to :people_person_types
    belongs_to :resource
    
    def self.search(search)
        if search
            where('Firstname LIKE ? OR LastName LIKE ?', "%#{search}%", "%#{search}%")
        else
            all
        end
    end
    
    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |person|
                csv << person.attributes.values_at(*column_names)
            end
        end
    end
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            person = find_by_id(row["id"]) || new
            person.attributes = row.to_hash
            person.save!
        end
    end

end
