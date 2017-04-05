class EmailListTypePerson < ActiveRecord::Base
    has_many :email_list_types
    has_many :people
    
    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |email_list_type_people|
                csv << email_list_type_people.attributes.values_at(*column_names)
            end
        end
    end
end
